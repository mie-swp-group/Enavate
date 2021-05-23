table 50100 test
{
    Caption = 'test';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; code; Code[20])
        {
            Caption = 'code';
            DataClassification = CustomerContent;
        }
        field(2; description; Text[250])
        {
            Caption = 'description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; code)
        {
            Clustered = true;
        }
    }

}
