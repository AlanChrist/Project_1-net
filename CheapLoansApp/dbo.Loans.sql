CREATE TABLE [dbo].[Loans] (
    [LoanNum]       INT NOT NULL IDENTITY,
    [CustName]      NCHAR (50)     NOT NULL,
    [LoanAmount]    DECIMAL (9, 2) NOT NULL,
    [AnnualIntRate] DECIMAL (3, 3) NOT NULL,
    [NumPayments]   INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([LoanNum] ASC)
);

