.class Lio/agora/base/internal/video/EglRenderer$10;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/EglRenderer;->clearImage(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/EglRenderer;

.field final synthetic val$a:F

.field final synthetic val$b:F

.field final synthetic val$g:F

.field final synthetic val$r:F


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/EglRenderer;FFFF)V
    .locals 0

    .line 838
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$10;->this$0:Lio/agora/base/internal/video/EglRenderer;

    iput p2, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$r:F

    iput p3, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$g:F

    iput p4, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$b:F

    iput p5, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 841
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$10;->this$0:Lio/agora/base/internal/video/EglRenderer;

    iget v1, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$r:F

    iget v2, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$g:F

    iget v3, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$b:F

    iget v4, p0, Lio/agora/base/internal/video/EglRenderer$10;->val$a:F

    invoke-static {v0, v1, v2, v3, v4}, Lio/agora/base/internal/video/EglRenderer;->access$1900(Lio/agora/base/internal/video/EglRenderer;FFFF)V

    return-void
.end method
