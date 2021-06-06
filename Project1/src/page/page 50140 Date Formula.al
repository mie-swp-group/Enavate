page 50140 "Date Formula"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Date Formula";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Primary Key"; Rec."Primary Key") { ApplicationArea = All; }
                field("Reference for Date Calculation"; Rec."Date Formula to Test") { ApplicationArea = All; }
                field("Date Result"; Rec."Date Result") { ApplicationArea = All; }
            }
        }

    }
}