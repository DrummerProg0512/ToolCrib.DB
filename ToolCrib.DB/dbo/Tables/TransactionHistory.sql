CREATE TABLE [dbo].[TransactionHistory] (
    [TransactionID]     BIGINT        IDENTITY (1, 1) NOT NULL,
    [RequestedBy]       INT           NOT NULL,
    [RequestedOn]       DATETIME2 (7) CONSTRAINT [DF_TransactionHistory_RequestedOn] DEFAULT (getdate()) NOT NULL,
    [TotalQty]          INT           CONSTRAINT [DF_TransactionHistory_TotalQty] DEFAULT ((0)) NOT NULL,
    [TotalCost]         DECIMAL (18)  NOT NULL,
    [TransactionTypeID] INT           NOT NULL,
    CONSTRAINT [PK_TransactionHistory] PRIMARY KEY CLUSTERED ([TransactionID] ASC),
    CONSTRAINT [FK_TransactionHistory_Users] FOREIGN KEY ([RequestedBy]) REFERENCES [dbo].[Users] ([UserID])
);


GO

