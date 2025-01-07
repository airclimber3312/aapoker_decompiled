.class public Lcom/hyphenate/chat/EMGroupOptions;
.super Ljava/lang/Object;


# instance fields
.field public extField:Ljava/lang/String;

.field public inviteNeedConfirm:Z

.field public maxUsers:I

.field public style:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/hyphenate/chat/EMGroupOptions;->maxUsers:I

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    iput-object v0, p0, Lcom/hyphenate/chat/EMGroupOptions;->style:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMGroupOptions;->inviteNeedConfirm:Z

    return-void
.end method
