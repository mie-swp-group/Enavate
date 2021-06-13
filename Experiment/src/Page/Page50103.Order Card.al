page 50103 "Order Card"
{

    Caption = 'Rental';
    PageType = Card;
    SourceTable = Order;
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update(true);
                    end;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field';
                    ApplicationArea = All;
                }
            }
            part("Order Line Part"; "Order Line Part")
            {
                SubPageLink = "Order No." = field("No.");
                ApplicationArea = all;
                UpdatePropagation = Both;
            }
        }
    }

}
