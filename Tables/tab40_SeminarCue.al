table 50140 "CSD Seminar Cue"
{
    // DataClassification = ToBeClassified;
    Caption = 'Seminar Cue';
    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(20; Planned; Integer)
        {
            Caption = 'Planned';
            FieldClass = FlowField;
            CalcFormula = count ("CSD Seminar Reg. Header" where (Status = const (planning)));
        }
        field(30; Registration; Integer)
        {
            Caption = 'Registration';
            FieldClass = FlowField;
            CalcFormula = count ("CSD Seminar Reg. Header" where (Status = const (Registration)));
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}