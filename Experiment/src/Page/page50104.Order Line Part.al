page 50104 "Order Line Part"
{

    Caption = 'Order Line';
    PageType = ListPart;
    SourceTable = "Order LIne";
    UsageCategory = Administration;
    ApplicationArea = all;
    PopulateAllFields = true;
    AutoSplitKey = true;

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
                field("Item Description"; Rec."Item Description")
                {
                    ToolTip = 'Specifies the value of the Item Description field';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field("Unit price"; Rec."Unit price")
                {
                    ToolTip = 'Specifies the value of the Unit price field';
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
