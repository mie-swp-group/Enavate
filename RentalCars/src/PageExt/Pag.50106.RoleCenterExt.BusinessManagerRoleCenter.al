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
                // Enabled = true;
                // Visible = true;
                action(RentalCar)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Rental Cars';
                    RunObject = page "Rental Cars";
                }

            }

        }
    }
}

