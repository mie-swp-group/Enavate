page 50105 "Addition List"
{
    
    ApplicationArea = All;
    Caption = 'Addition List';
    PageType = List;
    SourceTable = Addition;
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field';
                    ApplicationArea = All;
                }
                field(Education; Rec.Education)
                {
                    ToolTip = 'Specifies the value of the Education field';
                    ApplicationArea = All;
                }
                field(Hair; Rec.Hair)
                {
                    ToolTip = 'Specifies the value of the Hair field';
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
