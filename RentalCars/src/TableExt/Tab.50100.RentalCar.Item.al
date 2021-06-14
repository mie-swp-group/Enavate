tableextension 50100 "Rental Car" extends Item
{
    fields
    {
        field(50100; Model; Text[50])
        {
            Caption = 'Model';
            DataClassification = CustomerContent;
        }
        field(50101; Color; Text[20])
        {
            Caption = 'Color';
            DataClassification = CustomerContent;
        }
        field(50102; Transmission; Text[20])
        {
            Caption = 'Transmission';
            DataClassification = CustomerContent;
        }
        field(50103; Seats; Integer)
        {
            Caption = 'Seats';
            DataClassification = CustomerContent;
        }
        field(50104; "Fuel type"; Text[20])
        {
            Caption = 'Fuel type';
            DataClassification = CustomerContent;
        }
        field(50105; Mileage; Integer)
        {
            Caption = 'Mileage';
            DataClassification = CustomerContent;
        }
    }
}
