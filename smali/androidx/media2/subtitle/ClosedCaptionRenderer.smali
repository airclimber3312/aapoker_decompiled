.class public Landroidx/media2/subtitle/ClosedCaptionRenderer;
.super Landroidx/media2/subtitle/SubtitleController$Renderer;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;,
        Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;
    }
.end annotation


# instance fields
.field private mCCWidget:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleController$Renderer;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroidx/media2/subtitle/SubtitleTrack;
    .locals 3

    const-string v0, "mime"

    .line 71
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/cea-608"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer;->mCCWidget:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    iget-object v1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;-><init>(Landroidx/media2/subtitle/ClosedCaptionRenderer;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer;->mCCWidget:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    .line 76
    :cond_0
    new-instance v0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;

    iget-object v1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer;->mCCWidget:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    invoke-direct {v0, v1, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;-><init>(Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;Landroid/media/MediaFormat;)V

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No matching format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2

    const-string v0, "mime"

    .line 62
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text/cea-608"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
