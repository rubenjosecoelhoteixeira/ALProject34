query 50134 "Customer_Sales_Quantity"
{
    QueryType = Normal;
    // Sorts the results in descending order
    elements
    {
        dataitem(C; Customer)
        {
            column(Customer_Number; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            dataitem(SL; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = c."No.";
                SqlJoinType = InnerJoin;
                column(Qty; Quantity)
                {
                    // Change the value of the property to perform a different aggregate method on grouped columns: Sum, Average, Max, Min or Count
                    Method = Sum;
                }
            }
        }

    }
}