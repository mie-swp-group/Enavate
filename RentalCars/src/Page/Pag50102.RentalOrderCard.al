page 50102 "Rental Order Card"
{

    Caption = 'Rental Order';
    PageType = Card;
    SourceTable = "Rental Order";
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
                    // Editable = false;
                }
                // field("Customer No."; Rec."Customer No.")
                // {
                //     ToolTip = 'Specifies the value of the Customer No. field';
                //     ApplicationArea = All;

                //     trigger OnValidate()
                //     begin
                //         CurrPage.Update(true);
                //     end;
                // }

                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field';
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Customer Name';
                    ShowMandatory = true;
                    ToolTip = 'Specifies the name of the customer who will receive the products and be billed by default.';

                    trigger OnValidate()
                    begin
                        //SelltoCustomerNoOnAfterValidate(Rec, xRec);

                        //  if ApplicationAreaMgmtFacade.IsFoundationEnabled then
                        //     SalesCalcDiscountByType.ApplyDefaultInvoiceDiscount(0, Rec);

                        CurrPage.Update();
                    end;

                    // trigger OnLookup(var Text: Text): Boolean
                    // begin
                    //     if LookupSellToCustomerName() then
                    //         CurrPage.Update();
                    // end;

                    // field("Order No."; Rec."Order No.")
                    // {
                    //     ToolTip = 'Specifies the value of the Doc. No. field';
                    //     ApplicationArea = All;
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ToolTip = 'Specifies the value of the Salesperson No. field';
                    ApplicationArea = All;
                }

                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field';
                    ApplicationArea = All;
                }

            }
            part("Rental Order Line Part"; "Rental Order Line Part")
            {
                SubPageLink = "Order No." = field("No.");
                ApplicationArea = all;
                UpdatePropagation = Both;
            }
        }
    }

}
