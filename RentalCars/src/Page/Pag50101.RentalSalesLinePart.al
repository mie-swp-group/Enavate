page 50101 "RentalSalesLine Part"
{

    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = "Rental Order Line";
    UsageCategory = Administration;
    ApplicationArea = all;
    // PopulateAllFields = true;
    //AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
