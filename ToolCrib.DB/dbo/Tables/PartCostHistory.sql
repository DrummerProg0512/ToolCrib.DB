CREATE TABLE [dbo].[PartCostHistory] (
    [PartCostHistoryID] INT           IDENTITY (1, 1) NOT NULL,
    [PartID]            INT           NOT NULL,
    [CostAmount]        DECIMAL (18)  NOT NULL,
    [CurrencyCodeID]    INT           NOT NULL,
    [ExchangeRate]      DECIMAL (18)  NOT NULL,
    [ExchangeRateDate]  DATETIME2 (7) NOT NULL,
    [UpdatedBy]         INT           NOT NULL,
    [UpdatedOn]         DATETIME2 (7) CONSTRAINT [DF_PartCostHistory_UpdatedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_PartCostHistory] PRIMARY KEY CLUSTERED ([PartCostHistoryID] ASC),
    CONSTRAINT [FK_PartCostHistory_CurrencyCodes] FOREIGN KEY ([CurrencyCodeID]) REFERENCES [dbo].[CurrencyCodes] ([CurrencyCodeID]),
    CONSTRAINT [FK_PartCostHistory_PartsItems] FOREIGN KEY ([PartID]) REFERENCES [dbo].[PartsItems] ([PartID])
);


GO

