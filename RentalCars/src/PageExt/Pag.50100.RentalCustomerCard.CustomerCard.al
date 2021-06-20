pageextension 50100 "Rental Customer Card" extends "Customer Card"
{
    Layout
    {
        addafter("Disable Search by Name")
        {
            field(Discount; Rec.Discount)
            {
                ToolTip = 'Specifies the value of the Discount field';
                ApplicationArea = All;

            }
        }


    }

}
