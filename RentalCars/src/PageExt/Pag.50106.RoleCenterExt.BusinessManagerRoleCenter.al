pageextension 50106 "RoleCenterExt" extends "Business Manager Role Center"

{
    actions
    {
        addafter(Action41)
        {
            group(Rental)
            {
                Caption = 'Rental';
                ToolTip = 'Make rental orders, find cars for rent';
                action(RentalCar)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cars';
                    RunObject = page "Cars";
                }
                action("Rental Orders")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Rental Orders';
                    RunObject = page "Rental Order Line";
                }


            }

        }
        addafter("Sales Invoice")
        {
            action("Rental Order")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Rental Order';
                RunObject = Page "Rental Order Card";
                RunPageMode = Create;
                ToolTip = 'Create a new rental order.';
            }
        }
    }
}

