-- Supporting index for FK: FK_PartAssetsAttachments_PartAssets (missing FK)
-- Add FK constraint for UploadedBy tracking
-- This index improves user upload audit queries
CREATE NONCLUSTERED INDEX [IX_PartAssetsAttachments_UploadedBy]
	ON [dbo].[PartAssetsAttachments] ([UploadedBy] ASC);

GO
