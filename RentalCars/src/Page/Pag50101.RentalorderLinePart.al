page 50101 "Rental Order Line Part"
{

    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = "Rental Order Line";
    UsageCategory = Administration;
    ApplicationArea = all;
    PopulateAllFields = true;
    // AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Order No."; Rec."Order No.")
                {
                    ToolTip = 'Specifies the value of the Order No. field';
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field';
                    ApplicationArea = All;
                }
                field(Name; Rec."Item Description")
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field(Price; Rec."Price a day")
                {
                    ToolTip = 'Specifies the value of the Price field';
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ToolTip = 'Specifies the value of the Line Amount field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
