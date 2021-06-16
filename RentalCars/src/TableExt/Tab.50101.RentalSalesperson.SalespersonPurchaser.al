tableextension 50101 "Rental Salesperson" extends "Salesperson/Purchaser"
{
    fields
    {
        field(50100; "No."; Code[30])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }

    }
    keys
    {
        key(Key4; "No.")
        {

        }
    }


}
