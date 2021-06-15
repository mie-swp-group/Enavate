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
                field("Doc. No."; Rec."Doc. No.")
                {
                    ToolTip = 'Specifies the value of the Doc. No. field';
                    ApplicationArea = All;
                }
                field("Salesperson No."; Rec."Salesperson No.")
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
                SubPageLink = "LIne No." = field("Doc. No.");
                ApplicationArea = all;
                UpdatePropagation = Both;
            }
        }
    }

}
