.class Lio/agora/base/internal/video/VideoFrameBlender$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/VideoFrameBlender;->createAndBindTextureBuffer(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/VideoFrameBlender;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/VideoFrameBlender;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$height",
            "val$width"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    iput p2, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$width:I

    iput p3, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "into createAndBindTextureBuffer width:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidVideoFrameBlender"

    invoke-static {v2, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v3}, Lio/agora/base/internal/video/VideoFrameBlender;->access$000(Lio/agora/base/internal/video/VideoFrameBlender;)Lio/agora/base/internal/video/EglBase;

    move-result-object v3

    invoke-interface {v3}, Lio/agora/base/internal/video/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v3}, Lio/agora/base/internal/video/VideoFrameBlender;->access$200(Lio/agora/base/internal/video/VideoFrameBlender;)V

    iget-object v3, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    const/16 v4, 0xde1

    invoke-static {v4}, Lio/agora/base/internal/video/GlUtil;->generateTexture(I)I

    move-result v5

    invoke-static {v3, v5}, Lio/agora/base/internal/video/VideoFrameBlender;->access$302(Lio/agora/base/internal/video/VideoFrameBlender;I)I

    iget-object v3, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v3}, Lio/agora/base/internal/video/VideoFrameBlender;->access$300(Lio/agora/base/internal/video/VideoFrameBlender;)I

    move-result v3

    if-gtz v3, :cond_0

    const-string v1, "generateTexture failed"

    invoke-static {v2, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v3, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v3}, Lio/agora/base/internal/video/VideoFrameBlender;->access$300(Lio/agora/base/internal/video/VideoFrameBlender;)I

    move-result v3

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v3, "glTexImage2D"

    invoke-static {v3}, Lio/agora/base/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const/16 v3, 0x2802

    const v5, 0x47012f00    # 33071.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    const/16 v5, 0x2601

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    iget v9, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$width:I

    iget v10, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$height:I

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {}, Lio/agora/base/internal/ATrace;->endSection()V

    const-string v3, "TextureBufferPool.glTexImage2D"

    invoke-static {v3}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v3, 0x1

    new-array v5, v3, [I

    invoke-static {v3, v5, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v6, "glGenFramebuffers"

    invoke-static {v6}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    iget-object v6, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    aget v5, v5, v0

    invoke-static {v6, v5}, Lio/agora/base/internal/video/VideoFrameBlender;->access$402(Lio/agora/base/internal/video/VideoFrameBlender;I)I

    iget-object v5, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v5}, Lio/agora/base/internal/video/VideoFrameBlender;->access$400(Lio/agora/base/internal/video/VideoFrameBlender;)I

    move-result v5

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "glBindFramebuffer "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v7}, Lio/agora/base/internal/video/VideoFrameBlender;->access$400(Lio/agora/base/internal/video/VideoFrameBlender;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    iget-object v5, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v5}, Lio/agora/base/internal/video/VideoFrameBlender;->access$300(Lio/agora/base/internal/video/VideoFrameBlender;)I

    move-result v5

    const v7, 0x8ce0

    invoke-static {v6, v7, v4, v5, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string v4, "glFramebufferTexture2D"

    invoke-static {v4}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v4

    const v5, 0x8cd5

    if-eq v4, v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Framebuffer not complete, status: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "createAndBindTextureBuffer success width:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/base/internal/video/VideoFrameBlender$2;->val$height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/base/internal/video/VideoFrameBlender$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
