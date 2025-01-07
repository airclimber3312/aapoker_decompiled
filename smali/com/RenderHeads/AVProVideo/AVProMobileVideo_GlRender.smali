.class public Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;
.super Ljava/lang/Object;
.source "AVProMobileVideo_GlRender.java"


# instance fields
.field private m_FragmentShaderHandle:I

.field private m_FragmentShaderSource:Ljava/lang/String;

.field private m_FrameBufferHandle:I

.field private m_FrameBufferTextureHandle:I

.field private m_FramebufferHeight:I

.field private m_FramebufferWidth:I

.field private m_HasImageData:Z

.field private m_Height:I

.field private m_ImageData:Ljava/nio/ByteBuffer;

.field private m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

.field private m_MatrixHandle:I

.field private m_ProgramHandle:I

.field private m_QuadPositions:Ljava/nio/FloatBuffer;

.field private m_QuadUVs:Ljava/nio/FloatBuffer;

.field private m_TextureHandle:I

.field private m_UseFastOesPath:Z

.field private m_VertexAttribHandle:I

.field private m_VertexShaderHandle:I

.field private m_VertexShaderSource:Ljava/lang/String;

.field private m_Width:I

.field private m_aiVertexBufferObjects:[I

.field private m_bBlendEnabled:Z

.field private m_bCanUseGLBindVertexArray:Z

.field private m_bCullFace:Z

.field private m_bDepthTest:Z

.field private m_bStencilEnabled:Z

.field private m_bTextureFormat_EOS:Z

.field private m_iCurrentProgram:I

.field private m_iFrameBufferBinding:I

.field private m_iRenderBufferBinding:I

.field private m_iVertexArrayObject:I

.field private m_uvAttribHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 36
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    return-void
.end method

.method private static CreateFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 595
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 596
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 597
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 598
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 599
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private CreateGlQuadGeometry()V
    .locals 12

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 532
    fill-array-data v0, :array_0

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 540
    fill-array-data v1, :array_1

    .line 548
    invoke-static {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    .line 549
    invoke-static {v1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    .line 551
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 555
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 556
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x0

    .line 557
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    .line 559
    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const/4 v1, 0x2

    .line 561
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 562
    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 563
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    aput v4, v1, v2

    .line 564
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    aput v3, v1, v0

    .line 566
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aget v1, v1, v2

    const v3, 0x8892

    invoke-static {v3, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 v1, 0x30

    .line 567
    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v3, v1, v4, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 568
    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 569
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 571
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aget v0, v1, v0

    invoke-static {v3, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 v0, 0x20

    .line 572
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 573
    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 574
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 576
    invoke-static {v2}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private CreateGlShaderProgram()V
    .locals 2

    const v0, 0x8b31

    .line 497
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    const v0, 0x8b30

    .line 498
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    .line 500
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    if-lez v0, :cond_0

    .line 503
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 504
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 505
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 508
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    .line 511
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 512
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 514
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 515
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    return-void
.end method

.method private CreateGlTexture()V
    .locals 12

    const/4 v0, 0x1

    .line 448
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 453
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 454
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    if-lez v1, :cond_2

    .line 460
    iget-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    if-eqz v2, :cond_0

    const v2, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v2, 0xde1

    .line 462
    :goto_0
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 463
    iget-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_HasImageData:Z

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    .line 465
    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Width:I

    iget v7, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Height:I

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    iget-object v11, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    move v3, v2

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_1
    const/16 v1, 0x2801

    const/16 v3, 0x2601

    .line 467
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 468
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v3, 0x812f

    .line 469
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 470
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 472
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_2
    return-void
.end method

.method private DestroyGlTexture()V
    .locals 4

    .line 482
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 485
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 486
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 489
    iput v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    :cond_0
    return-void
.end method

.method private LoadGlShader(ILjava/lang/String;)I
    .locals 0

    .line 582
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 585
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 586
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    :cond_0
    return p1
.end method

.method private LoadGlShaders_Texture2D()V
    .locals 7

    const-string v0, "#version 100\n"

    .line 421
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "precision mediump float;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexPosition;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexUV;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform mat4 textureMat;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "varying highp vec2 out_uv;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "void main()\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tgl_Position = vec4(vertexPosition.xy, 0.0, 1.0);\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tout_uv = (textureMat * vertexUV).xy;\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 434
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uniform sampler2D texture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tgl_FragColor = texture2D(texture, out_uv);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    return-void
.end method

.method private LoadGlShaders_TextureOES()V
    .locals 7

    const-string v0, "#version 100\n"

    .line 392
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "precision mediump float;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexPosition;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexUV;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform mat4 textureMat;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "varying highp vec2 out_uv;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "void main()\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tgl_Position = vec4(vertexPosition.xy, 0.0, 1.0);\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tout_uv = (textureMat * vertexUV).xy;\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    .line 405
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uniform samplerExternalOES texture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tgl_FragColor = texture2D(texture, out_uv);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    return-void
.end method

.method private SetupGlShaderProgram()V
    .locals 2

    .line 523
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const-string/jumbo v1, "vertexPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    .line 524
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const-string/jumbo v1, "vertexUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    .line 525
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const-string v1, "textureMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixHandle:I

    return-void
.end method


# virtual methods
.method public Blit(Landroid/graphics/SurfaceTexture;[F)J
    .locals 9

    const v0, 0x8893

    const/4 v1, 0x0

    .line 279
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8892

    .line 280
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0xb90

    .line 281
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb71

    .line 282
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb44

    .line 283
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 284
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v2, 0x1

    .line 285
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 286
    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 289
    iget-boolean v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 291
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v3, 0x303

    .line 292
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 296
    :cond_0
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 298
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    if-nez v0, :cond_1

    .line 300
    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 301
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 303
    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    const/4 v4, 0x2

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 304
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 307
    :cond_1
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    const v3, 0x8d65

    if-eqz v0, :cond_2

    const v4, 0x8d65

    goto :goto_0

    :cond_2
    const/16 v4, 0xde1

    :goto_0
    const v5, 0x84c0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_6

    .line 314
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const v8, 0x8d68

    .line 315
    invoke-static {v3, v8, v0}, Landroid/opengl/GLES20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 317
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x84c2

    .line 320
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_4
    const v0, 0x84c1

    .line 321
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 322
    :goto_1
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 328
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 329
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v5

    goto :goto_2

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_2
    if-nez p2, :cond_6

    const/16 p2, 0x10

    new-array p2, p2, [F

    .line 340
    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_3

    .line 351
    :cond_5
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 352
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 359
    invoke-static {p2}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

    .line 360
    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixHandle:I

    invoke-static {p2, v2, v1, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 364
    :cond_7
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    const/4 p2, 0x4

    const/4 v0, 0x5

    if-eqz p1, :cond_8

    .line 367
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 368
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 369
    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    goto :goto_4

    .line 373
    :cond_8
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 377
    :goto_4
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 378
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 379
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 380
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-wide v6
.end method

.method public CreateRenderTarget(II)V
    .locals 11

    .line 152
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 155
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferWidth:I

    .line 156
    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferHeight:I

    const/4 p1, 0x1

    .line 158
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p2

    .line 161
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    .line 166
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 167
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    .line 171
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 174
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    .line 177
    iget v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferWidth:I

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferHeight:I

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2801

    const/16 v2, 0x2601

    .line 178
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 179
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v2, 0x812f

    .line 180
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 181
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const p1, 0x8ce0

    .line 184
    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    invoke-static {p2, p1, v1, v2, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 186
    invoke-static {p1, p1, p1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4500

    .line 187
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 190
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 191
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 193
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    return-void
.end method

.method public Destroy()V
    .locals 6

    .line 97
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->DestroyGlTexture()V

    .line 99
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->DestroyRenderTarget()V

    .line 101
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 103
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 104
    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    if-eqz v0, :cond_2

    .line 109
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    new-array v3, v2, [I

    aput v0, v3, v1

    .line 112
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 114
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    .line 117
    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aget v3, v0, v1

    if-lez v3, :cond_2

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v1

    .line 122
    aget v0, v0, v2

    aput v0, v5, v2

    .line 123
    invoke-static {v4, v5, v1}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    .line 125
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    .line 128
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aput v1, v0, v1

    .line 129
    aput v1, v0, v2

    :cond_2
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    .line 134
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    .line 135
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    .line 136
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public DestroyRenderTarget()V
    .locals 5

    .line 204
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v3, 0x8d40

    .line 207
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v4, 0xde1

    .line 208
    invoke-static {v3, v0, v4, v2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    new-array v0, v1, [I

    .line 210
    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    aput v4, v0, v2

    .line 211
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 212
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 215
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    .line 217
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 218
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 222
    :cond_0
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    if-eqz v0, :cond_1

    new-array v3, v1, [I

    aput v0, v3, v2

    .line 227
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 228
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 231
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    :cond_1
    return-void
.end method

.method public EndRender()V
    .locals 2

    .line 260
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    if-eqz v0, :cond_4

    .line 263
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bBlendEnabled:Z

    const/16 v1, 0xbe2

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bDepthTest:Z

    const/16 v1, 0xb71

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 265
    :goto_1
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCullFace:Z

    const/16 v1, 0xb44

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 266
    :goto_2
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bStencilEnabled:Z

    const/16 v1, 0xb90

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_3

    :cond_3
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_3
    const v0, 0x8d40

    .line 268
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iFrameBufferBinding:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8d41

    .line 269
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iRenderBufferBinding:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 270
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_4
    return-void
.end method

.method public GetGlTextureHandle(Z)I
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_UseFastOesPath:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 143
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    return p1

    .line 145
    :cond_0
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    return p1
.end method

.method public Setup(II[BZZZ)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Width:I

    .line 59
    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Height:I

    .line 61
    iput-boolean p4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    .line 62
    iput-boolean p5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    .line 63
    iput-boolean p6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_UseFastOesPath:Z

    if-eqz p3, :cond_0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x4

    .line 67
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 69
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 70
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_HasImageData:Z

    :cond_0
    if-nez p6, :cond_2

    .line 77
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    if-eqz p1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShaders_TextureOES()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShaders_Texture2D()V

    .line 86
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateGlTexture()V

    if-nez p6, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateGlShaderProgram()V

    .line 90
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->SetupGlShaderProgram()V

    .line 91
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateGlQuadGeometry()V

    :cond_3
    return-void
.end method

.method public StartRender()V
    .locals 4

    .line 237
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 240
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/16 v1, 0xbe2

    .line 241
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bBlendEnabled:Z

    const/16 v2, 0xb71

    .line 242
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bDepthTest:Z

    const/16 v2, 0xb44

    .line 243
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCullFace:Z

    const v2, 0x8b8d

    .line 244
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iCurrentProgram:I

    const v2, 0x8ca6

    .line 245
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iFrameBufferBinding:I

    const v2, 0x8ca7

    .line 246
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iRenderBufferBinding:I

    const/16 v2, 0xb90

    .line 247
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bStencilEnabled:Z

    const v0, 0x8d40

    .line 250
    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8d41

    .line 251
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const/16 v0, 0xc11

    .line 252
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 253
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferWidth:I

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    .line 254
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_4
    return-void
.end method
