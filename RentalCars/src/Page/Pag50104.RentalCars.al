page 50104 "Rental Cars"
{

    ApplicationArea = All;
    Caption = 'Rental Cars';
    PageType = List;
    SourceTable = Item;
    UsageCategory = Lists;
    CardPageId = "Rental Cars Card";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Model,Year"; Rec."Model,Year")
                {
                    ToolTip = 'Specifies the value of the Model,Year field';
                    ApplicationArea = All;
                }
                field(Color; Rec.Color)
                {
                    ToolTip = 'Specifies the value of the Color field';
                    ApplicationArea = All;
                }
                field(Transmission; Rec.Transmission)
                {
                    ToolTip = 'Specifies the value of the Transmission field';
                    ApplicationArea = All;
                }
                field(Doors; Rec.Doors)
                {
                    ToolTip = 'Specifies the value of the Doors field';
                    ApplicationArea = All;
                }
                field(Seats; Rec.Seats)
                {
                    ToolTip = 'Specifies the value of the Seats field';
                    ApplicationArea = All;
                }
                field("Trunk Vol./Bags"; Rec."Trunk Vol./Bags")
                {
                    ToolTip = 'Specifies the value of the Trunk Vol./Bags field';
                    ApplicationArea = All;
                }
                field("Fuel type"; Rec."Fuel type")
                {
                    ToolTip = 'Specifies the value of the Fuel type field';
                    ApplicationArea = All;
                }
                field("Fuel Cons./100km"; Rec."Fuel Cons./100km")
                {
                    ToolTip = 'Specifies the value of the Fuel Cons./100km field';
                    ApplicationArea = All;
                }
                field(Mileage; Rec.Mileage)
                {
                    ToolTip = 'Specifies the value of the Mileage field';
                    ApplicationArea = All;
                }
                field("Price/1 day"; Rec."Price/1 day")
                {
                    ToolTip = 'Specifies the value of the Price/1 day field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
