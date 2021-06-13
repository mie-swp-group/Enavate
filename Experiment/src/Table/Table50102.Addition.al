table 50102 "Addition"
{
    Caption = 'Addition';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Hair; Text[100])
        {
            Caption = 'Hair';
            DataClassification = CustomerContent;
        }
        field(2; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = CustomerContent;
        }
        field(3; Education; Text[100])
        {
            Caption = 'Education';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; Education, Hair, Age)
        {
            Clustered = true;
        }
    }

}
