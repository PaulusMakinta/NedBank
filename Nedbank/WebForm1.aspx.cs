using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nedbank
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TokenQueue"] == null)
            {
                Queue<int> queueTokens = new Queue<int>();
                Session["TokenQueue"] = queueTokens; 
            }
            
        }

        protected void btnPrintToken_Click(object sender, EventArgs e)
        {
            Queue<int> tokenQueue = (Queue<int>)Session["TokenQueue"];
            Label1.Text = "There are " + tokenQueue.Count.ToString() + " people before you";

            if (Session["LastNumberIssued"] == null)
            {
                Session["LastNumberIssued"] = 0;
            }
            int NextNumberToBeIssued = (int)Session["LastNumberIssued"] + 1;
            Session["LastNumberIssued"] = NextNumberToBeIssued;
            tokenQueue.Enqueue(NextNumberToBeIssued);

            AddTokensToList(tokenQueue);

        }

        private void AddTokensToList(Queue<int> tokenQueue)
        {
            ListBox1.Items.Clear();

            foreach (int token in tokenQueue)
            {
                ListBox1.Items.Add(token.ToString());
            }
        }

        private void ServeNextCustomer(TextBox textBox, int counterNumber)
        {
            Queue<int> tokenQueue = (Queue<int>)Session["TokenQueue"];
            if (tokenQueue.Count == 0)
            {
                textBox.Text = "No customers Yet";
            }
            else
            {
                int NextNumberToBeServed = tokenQueue.Dequeue();
                textBox.Text = NextNumberToBeServed.ToString();
                txtDisplay.Text = " Ticket Number " + NextNumberToBeServed.ToString() + " Please Go to counter " + counterNumber.ToString();

                AddTokensToList(tokenQueue);

            }
        }

        protected void btnTeller1_Click(object sender, EventArgs e)
        {
            ServeNextCustomer(txtTeller1, 1);
        }

        protected void btnTeller2_Click(object sender, EventArgs e)
        {
            ServeNextCustomer(txtTeller2, 2);
        }

        protected void btnTeller3_Click(object sender, EventArgs e)
        {
            ServeNextCustomer(txtTeller3, 3);
        }
    }
}