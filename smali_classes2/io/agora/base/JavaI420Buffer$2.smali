.class Lio/agora/base/JavaI420Buffer$2;
.super Ljava/lang/Object;
.source "JavaI420Buffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/JavaI420Buffer;->cropAndScaleI420(Lio/agora/base/VideoFrame$I420Buffer;IIIIII)Lio/agora/base/VideoFrame$Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:Lio/agora/base/VideoFrame$I420Buffer;


# direct methods
.method constructor <init>(Lio/agora/base/VideoFrame$I420Buffer;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lio/agora/base/JavaI420Buffer$2;->val$buffer:Lio/agora/base/VideoFrame$I420Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 245
    iget-object v0, p0, Lio/agora/base/JavaI420Buffer$2;->val$buffer:Lio/agora/base/VideoFrame$I420Buffer;

    invoke-interface {v0}, Lio/agora/base/VideoFrame$I420Buffer;->release()V

    return-void
.end method
