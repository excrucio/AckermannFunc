using System;
using System.ComponentModel;
using System.Numerics;
using System.Threading.Tasks;
using System.Windows;

namespace AckermannFunc
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private BackgroundWorker worker = new BackgroundWorker();

        public MainWindow()
        {
            InitializeComponent();
            button.Content = "Calculate";
            worker.WorkerSupportsCancellation = true;

            worker.DoWork += new DoWorkEventHandler(worker_DoWork);
            worker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(worker_RunWorkerCompleted);
        }

        private void worker_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;

            // Assign the result of the computation
            // to the Result property of the DoWorkEventArgs
            // object. This is will be available to the
            // RunWorkerCompleted eventhandler.

            var m = new BigInteger(((Tuple<int, int>)e.Argument).Item1);
            var n = new BigInteger(((Tuple<int, int>)e.Argument).Item2);

            e.Result = Ackermann(m, n, worker, e);
        }

        private void worker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            // First, handle the case where an exception was thrown.
            if (e.Error != null)
            {
                reset();
                textBox_result.Text = "ERROR!!";
            }
            else if (e.Cancelled)
            {
                reset();
                textBox_result.Text = "Operation canceled!";
            }
            else
            {
                finish();
                textBox_result.Text = e.Result.ToString();
                textBox.Text = textBox_result.Text.Length.ToString() + " digits";
            }

            // now for calculating another
            button.Content = "Calculate";
        }

        private void Window_Closing(object sender, CancelEventArgs e)
        {
            worker.CancelAsync();
            worker.Dispose();
        }

        private void reset()
        {
            ProgressBar0.IsIndeterminate = false;
            ProgressBar0.Value = 0;
            textBox.Text = "";
            textBox_result.Text = "";
            button.Content = "Calculate";
        }

        private void finish()
        {
            ProgressBar0.IsIndeterminate = false;
            ProgressBar0.Value = 100;
            textBox.Text = "";
            textBox_result.Text = "";
            button.Content = "Calculate";
        }

        private void help_Click(object sender, RoutedEventArgs e)
        {
            var win = new Help();
            win.Show();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            if (button.Content.ToString() == "Cancel")
            {
                worker.CancelAsync();
                reset();
                textBox_result.Text = "Canceled!";
                return;
            }

            int m = PickM.Value == null ? 0 : (int)PickM.Value;
            int n = PickN.Value == null ? 0 : (int)PickN.Value;

            ProgressBar0.IsIndeterminate = true;
            textBox.Text = "Calculating...";

            button.Content = "Cancel";

            worker.RunWorkerAsync(new Tuple<int, int>(m, n));
        }

        public class OverflowlessStack<T>
        {
            internal sealed class SinglyLinkedNode
            {
                //Larger the better, but we want to be low enough
                //to demonstrate the case where we overflow a node
                //and hence create another.
                private const int ArraySize = 2048;

                private T[] _array;
                private int _size;
                public SinglyLinkedNode Next;

                public SinglyLinkedNode()
                {
                    _array = new T[ArraySize];
                }

                public bool IsEmpty { get { return _size == 0; } }

                public SinglyLinkedNode Push(T item)
                {
                    if (_size == ArraySize - 1)
                    {
                        SinglyLinkedNode n = new SinglyLinkedNode();
                        n.Next = this;
                        n.Push(item);
                        return n;
                    }
                    _array[_size++] = item;
                    return this;
                }

                public T Pop()
                {
                    return _array[--_size];
                }
            }

            private SinglyLinkedNode _head = new SinglyLinkedNode();

            public T Pop()
            {
                T ret = _head.Pop();
                if (_head.IsEmpty && _head.Next != null)
                    _head = _head.Next;
                return ret;
            }

            public void Push(T item)
            {
                _head = _head.Push(item);
            }

            public bool IsEmpty
            {
                get { return _head.Next == null && _head.IsEmpty; }
            }
        }

        public BigInteger Ackermann(BigInteger m, BigInteger n, BackgroundWorker bckg_work, DoWorkEventArgs e)
        {
            var stack = new OverflowlessStack<BigInteger>();
            stack.Push(m);
            while (!stack.IsEmpty)
            {
                m = stack.Pop();
                skipStack:

                if (bckg_work.CancellationPending)
                {
                    e.Cancel = true;
                    stack = new OverflowlessStack<BigInteger>();
                    GC.Collect();
                    break;
                }

                if (m == 0)
                    n = n + 1;
                else if (m == 1)
                    n = n + 2;
                else if (m == 2)
                    n = n * 2 + 3;
                else if (n == 0)
                {
                    --m;
                    n = 1;
                    goto skipStack;
                }
                else
                {
                    stack.Push(m - 1);
                    --n;
                    goto skipStack;
                }
            }

            return n;
        }
    }
}