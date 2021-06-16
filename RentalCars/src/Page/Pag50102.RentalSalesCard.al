page 50102 "Rental Sales Card"
{

    Caption = 'Rental Cars';
    PageType = Card;
    SourceTable = "Rental Sales Header";
    UsageCategory = Lists;
    ApplicationArea = all;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Order No."; Rec."Order No.")
                {
                    ToolTip = 'Specifies the value of the Doc. No. field';
                    ApplicationArea = All;
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ToolTip = 'Specifies the value of the Salesperson No. field';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field';
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field';
                    ApplicationArea = All;
                }
            }
            part("RentalSalesLine Part"; "RentalSalesLine Part")
            {
                SubPageLink = "LIne No." = field("Order No.");
                ApplicationArea = all;
                UpdatePropagation = Both;
            }
        }
    }

}
