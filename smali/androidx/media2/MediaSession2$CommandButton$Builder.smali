.class public final Landroidx/media2/MediaSession2$CommandButton$Builder;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2$CommandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCommand:Landroidx/media2/SessionCommand2;

.field private mDisplayName:Ljava/lang/String;

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mIconResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/MediaSession2$CommandButton;
    .locals 7

    .line 1643
    new-instance v6, Landroidx/media2/MediaSession2$CommandButton;

    iget-object v1, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mCommand:Landroidx/media2/SessionCommand2;

    iget v2, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mIconResId:I

    iget-object v3, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mDisplayName:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v5, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mEnabled:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaSession2$CommandButton;-><init>(Landroidx/media2/SessionCommand2;ILjava/lang/String;Landroid/os/Bundle;Z)V

    return-object v6
.end method

.method public setCommand(Landroidx/media2/SessionCommand2;)Landroidx/media2/MediaSession2$CommandButton$Builder;
    .locals 0

    .line 1587
    iput-object p1, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mCommand:Landroidx/media2/SessionCommand2;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Landroidx/media2/MediaSession2$CommandButton$Builder;
    .locals 0

    .line 1611
    iput-object p1, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setEnabled(Z)Landroidx/media2/MediaSession2$CommandButton$Builder;
    .locals 0

    .line 1623
    iput-boolean p1, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mEnabled:Z

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media2/MediaSession2$CommandButton$Builder;
    .locals 0

    .line 1633
    iput-object p1, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconResId(I)Landroidx/media2/MediaSession2$CommandButton$Builder;
    .locals 0

    .line 1601
    iput p1, p0, Landroidx/media2/MediaSession2$CommandButton$Builder;->mIconResId:I

    return-object p0
.end method
