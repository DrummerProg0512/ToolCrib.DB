CREATE TABLE [dbo].[UsersAreas] (
    [UsersAreasID]    INT           IDENTITY (1, 1) NOT NULL,
    [AreaLocationID]  INT           NOT NULL,
    [UserID]          INT           NOT NULL,
    [UpdatedOn]       DATETIME2 (7) NOT NULL,
    [UpdatedBy]       INT           NOT NULL,
    [UsersAreaActive] BIT           CONSTRAINT [DF_UsersAreas_UsersAreaActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_UsersAreas] PRIMARY KEY CLUSTERED ([UsersAreasID] ASC),
    CONSTRAINT [FK_UsersAreas_AreaLocations] FOREIGN KEY ([AreaLocationID]) REFERENCES [dbo].[AreaLocations] ([AreaLocationID]),
    CONSTRAINT [FK_UsersAreas_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);


GO

CREATE NONCLUSTERED INDEX [IX_UsersAreas_UserID]
    ON [dbo].[UsersAreas]([UserID] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_UsersAreas_AreaLocationID]
    ON [dbo].[UsersAreas]([AreaLocationID] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'getdate()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UsersAreas', @level2type = N'COLUMN', @level2name = N'UpdatedOn';


GO

