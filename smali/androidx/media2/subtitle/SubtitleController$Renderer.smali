.class public abstract Landroidx/media2/subtitle/SubtitleController$Renderer;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Renderer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createTrack(Landroid/media/MediaFormat;)Landroidx/media2/subtitle/SubtitleTrack;
.end method

.method public abstract supports(Landroid/media/MediaFormat;)Z
.end method
