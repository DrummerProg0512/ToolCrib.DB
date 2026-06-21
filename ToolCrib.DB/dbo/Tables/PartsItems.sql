CREATE TABLE [dbo].[PartsItems] (
    [PartID]             INT            IDENTITY (1, 1) NOT NULL,
    [PartName]           NVARCHAR (250) CONSTRAINT [DF_PartsItems_PartName] DEFAULT ('') NOT NULL,
    [PartDescription]    NVARCHAR (MAX) CONSTRAINT [DF_PartsItems_PartDescription] DEFAULT ('') NOT NULL,
    [VendorID]           INT            NOT NULL,
    [PartItemCost]       DECIMAL (18)   NOT NULL,
    [PartItemMin]        DECIMAL (18)   NOT NULL,
    [PartItemMax]        DECIMAL (18)   NOT NULL,
    [ShelfLife]          DECIMAL (18)   NOT NULL,
    [PartTypeCategoryID] INT            NOT NULL,
    [PartCode]           NVARCHAR (250) CONSTRAINT [DF_PartsItems_PartCode] DEFAULT ('') NOT NULL,
    [PartActive]         BIT            CONSTRAINT [DF_PartsItems_PartActive] DEFAULT ((1)) NOT NULL,
    [UpdatedBy]          INT            NOT NULL,
    [UpdatedOn]          DATETIME2 (7)  CONSTRAINT [DF_PartsItems_UpdatedOn] DEFAULT (getdate()) NOT NULL,
    [UOM_ID]             INT            NOT NULL,
    [PartUsageTypeID]    INT            NOT NULL,
    [PartTrackingTypeID] INT            NOT NULL,
    CONSTRAINT [PK_PartsItems] PRIMARY KEY CLUSTERED ([PartID] ASC),
    CONSTRAINT [FK_PartsItems_PartTypeCategory] FOREIGN KEY ([PartTypeCategoryID]) REFERENCES [dbo].[PartTypeCategory] ([PartTypeCategoryID]),
    CONSTRAINT [FK_PartsItems_UOMs] FOREIGN KEY ([UOM_ID]) REFERENCES [dbo].[UOMs] ([UOM_ID]),
    CONSTRAINT [FK_PartsItems_Users] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[Users] ([UserID])
);


GO

