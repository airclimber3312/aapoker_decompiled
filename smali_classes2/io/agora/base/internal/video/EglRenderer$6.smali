.class Lio/agora/base/internal/video/EglRenderer$6;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/EglRenderer;->updateVsyncDuration(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/EglRenderer;

.field final synthetic val$newVsyncDuration:J


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/EglRenderer;J)V
    .locals 0

    .line 391
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$6;->this$0:Lio/agora/base/internal/video/EglRenderer;

    iput-wide p2, p0, Lio/agora/base/internal/video/EglRenderer$6;->val$newVsyncDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 394
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$6;->this$0:Lio/agora/base/internal/video/EglRenderer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update vsync duration, old:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer$6;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v2}, Lio/agora/base/internal/video/EglRenderer;->access$1700(Lio/agora/base/internal/video/EglRenderer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/agora/base/internal/video/EglRenderer$6;->val$newVsyncDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/video/EglRenderer;->access$1000(Lio/agora/base/internal/video/EglRenderer;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$6;->this$0:Lio/agora/base/internal/video/EglRenderer;

    iget-wide v1, p0, Lio/agora/base/internal/video/EglRenderer$6;->val$newVsyncDuration:J

    invoke-static {v0, v1, v2}, Lio/agora/base/internal/video/EglRenderer;->access$1702(Lio/agora/base/internal/video/EglRenderer;J)J

    return-void
.end method
