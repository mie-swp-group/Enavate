page 50103 "Rental Sales Line"
{
    Caption = 'Rental Sales Line';
    PageType = List;
    SourceTable = "Rental Sales Line";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("LIne No."; Rec."LIne No.")
                {
                    ToolTip = 'Specifies the value of the LIne No. field';
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
