.class public Lio/agora/base/internal/video/YuvConverter;
.super Ljava/lang/Object;
.source "YuvConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final ANDROID_MATRIX_LENGTH:I = 0x9

.field private static final DEBUG:Z = false

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TAG:Ljava/lang/String; = "YuvConverter"

.field private static enableConvertPerLog:Z = false

.field private static enablePboOpt:Z = true


# instance fields
.field private convertTimeCounter:J

.field private convertTimeInNS:J

.field private final drawer:Lio/agora/base/internal/video/GlGenericDrawer;

.field private formerTextureMatrix:Landroid/graphics/Matrix;

.field private final gpupboUtil:Lio/agora/base/internal/video/GPUPBOUtil;

.field private final i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

.field private maxTextureSize:I

.field private final shaderCallbacks:Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;

.field private final threadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/YuvConverter;->threadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    .line 181
    new-instance v1, Lio/agora/base/internal/video/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lio/agora/base/internal/video/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    .line 183
    new-instance v1, Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;-><init>(Lio/agora/base/internal/video/YuvConverter$1;)V

    iput-object v1, p0, Lio/agora/base/internal/video/YuvConverter;->shaderCallbacks:Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;

    .line 184
    new-instance v2, Lio/agora/base/internal/video/GlGenericDrawer;

    const-string v3, "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v2, v3, v1}, Lio/agora/base/internal/video/GlGenericDrawer;-><init>(Ljava/lang/String;Lio/agora/base/internal/video/GlGenericDrawer$ShaderCallbacks;)V

    iput-object v2, p0, Lio/agora/base/internal/video/YuvConverter;->drawer:Lio/agora/base/internal/video/GlGenericDrawer;

    .line 185
    new-instance v1, Lio/agora/base/internal/video/GPUPBOUtil;

    invoke-direct {v1}, Lio/agora/base/internal/video/GPUPBOUtil;-><init>()V

    iput-object v1, p0, Lio/agora/base/internal/video/YuvConverter;->gpupboUtil:Lio/agora/base/internal/video/GPUPBOUtil;

    .line 186
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lio/agora/base/internal/video/YuvConverter;->formerTextureMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 192
    iput v1, p0, Lio/agora/base/internal/video/YuvConverter;->maxTextureSize:I

    const-wide/16 v1, 0x0

    .line 199
    iput-wide v1, p0, Lio/agora/base/internal/video/YuvConverter;->convertTimeInNS:J

    .line 200
    iput-wide v1, p0, Lio/agora/base/internal/video/YuvConverter;->convertTimeCounter:J

    .line 211
    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method private checkMaxTextureSize(II)Z
    .locals 4

    .line 219
    iget v0, p0, Lio/agora/base/internal/video/YuvConverter;->maxTextureSize:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    const/16 v3, 0xd33

    .line 222
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v3, "glGetIntegerv of max texture size error"

    .line 223
    invoke-static {v3}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    aget v0, v0, v2

    .line 224
    iput v0, p0, Lio/agora/base/internal/video/YuvConverter;->maxTextureSize:I

    .line 226
    :cond_0
    iget v0, p0, Lio/agora/base/internal/video/YuvConverter;->maxTextureSize:I

    if-lt v0, p1, :cond_1

    if-lt v0, p2, :cond_1

    return v2

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reach max texture size width:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxTextureSize:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/agora/base/internal/video/YuvConverter;->maxTextureSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YuvConverter"

    invoke-static {p2, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static setEnableConvertPerLog(Z)V
    .locals 0

    .line 204
    sput-boolean p0, Lio/agora/base/internal/video/YuvConverter;->enableConvertPerLog:Z

    return-void
.end method

.method public static setEnablePboOpt(Z)V
    .locals 0

    .line 195
    sput-boolean p0, Lio/agora/base/internal/video/YuvConverter;->enablePboOpt:Z

    return-void
.end method


# virtual methods
.method public convert(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$I420Buffer;
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lio/agora/base/internal/video/YuvConverter;->convert(Lio/agora/base/VideoFrame$TextureBuffer;Lio/agora/base/VideoFrame$ColorSpace;)Lio/agora/base/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lio/agora/base/VideoFrame$TextureBuffer;Lio/agora/base/VideoFrame$ColorSpace;)Lio/agora/base/VideoFrame$I420Buffer;
    .locals 25

    move-object/from16 v0, p0

    .line 238
    iget-object v1, v0, Lio/agora/base/internal/video/YuvConverter;->threadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 267
    invoke-interface/range {p1 .. p1}, Lio/agora/base/VideoFrame$TextureBuffer;->getWidth()I

    move-result v1

    .line 268
    invoke-interface/range {p1 .. p1}, Lio/agora/base/VideoFrame$TextureBuffer;->getHeight()I

    move-result v12

    add-int/lit8 v2, v1, 0x7

    .line 269
    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v13, v2, 0x8

    add-int/lit8 v2, v12, 0x1

    .line 270
    div-int/lit8 v14, v2, 0x2

    add-int v2, v12, v14

    mul-int v3, v13, v2

    .line 273
    invoke-static {v3}, Lio/agora/base/internal/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 276
    div-int/lit8 v11, v13, 0x4

    .line 279
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 280
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 281
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v3, -0x41000000    # -0.5f

    .line 282
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 283
    invoke-direct {v0, v11, v2}, Lio/agora/base/internal/video/YuvConverter;->checkMaxTextureSize(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 286
    :cond_0
    iget-object v3, v0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v3, v11, v2}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->setSize(II)V

    .line 289
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    const v9, 0x8d40

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v2, "glBindFramebuffer"

    .line 290
    invoke-static {v2}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 292
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->shaderCallbacks:Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;->setColorSpace(Lio/agora/base/VideoFrame$ColorSpace;)V

    .line 295
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->shaderCallbacks:Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;->setPlaneY()V

    .line 296
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->drawer:Lio/agora/base/internal/video/GlGenericDrawer;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object v5, v10

    move v6, v1

    move v7, v12

    move/from16 v9, v16

    move-object/from16 v16, v10

    move v10, v11

    move/from16 v17, v11

    move v11, v12

    invoke-static/range {v2 .. v11}, Lio/agora/base/internal/video/VideoFrameDrawer;->drawTexture(Lio/agora/base/internal/video/RendererCommon$GlDrawer;Lio/agora/base/VideoFrame$TextureBuffer;ILandroid/graphics/Matrix;IIIIII)V

    .line 302
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->shaderCallbacks:Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;->setPlaneU()V

    .line 303
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->drawer:Lio/agora/base/internal/video/GlGenericDrawer;

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v5, v16

    move v9, v12

    move/from16 v10, v17

    move v11, v14

    invoke-static/range {v2 .. v11}, Lio/agora/base/internal/video/VideoFrameDrawer;->drawTexture(Lio/agora/base/internal/video/RendererCommon$GlDrawer;Lio/agora/base/VideoFrame$TextureBuffer;ILandroid/graphics/Matrix;IIIIII)V

    .line 309
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->shaderCallbacks:Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lio/agora/base/internal/video/YuvConverter$ShaderCallbacks;->setPlaneV()V

    .line 310
    iget-object v2, v0, Lio/agora/base/internal/video/YuvConverter;->drawer:Lio/agora/base/internal/video/GlGenericDrawer;

    move/from16 v8, v17

    invoke-static/range {v2 .. v11}, Lio/agora/base/internal/video/VideoFrameDrawer;->drawTexture(Lio/agora/base/internal/video/RendererCommon$GlDrawer;Lio/agora/base/VideoFrame$TextureBuffer;ILandroid/graphics/Matrix;IIIIII)V

    .line 316
    sget-boolean v2, Lio/agora/base/internal/video/YuvConverter;->enableConvertPerLog:Z

    if-eqz v2, :cond_1

    .line 317
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 320
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/agora/base/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, v0, Lio/agora/base/internal/video/YuvConverter;->formerTextureMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v24, 0x1

    xor-int/lit8 v20, v4, 0x1

    .line 321
    sget-boolean v4, Lio/agora/base/internal/video/YuvConverter;->enablePboOpt:Z

    const/4 v9, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lio/agora/base/internal/video/YuvConverter;->gpupboUtil:Lio/agora/base/internal/video/GPUPBOUtil;

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v5, v0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    .line 322
    invoke-virtual {v5}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getWidth()I

    move-result v18

    iget-object v5, v0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    .line 323
    invoke-virtual {v5}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getHeight()I

    move-result v19

    const/16 v21, 0x1908

    const/16 v22, 0x1401

    move-object v8, v15

    move-object v15, v4

    move-object/from16 v23, v8

    .line 322
    invoke-virtual/range {v15 .. v23}, Lio/agora/base/internal/video/GPUPBOUtil;->readFrame(IIIIZIILjava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    move-object v8, v15

    :cond_3
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_4

    move-object/from16 p2, v8

    move/from16 v16, v12

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 331
    iget-object v6, v0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v6}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getWidth()I

    move-result v6

    iget-object v7, v0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    .line 332
    invoke-virtual {v7}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getHeight()I

    move-result v7

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    move-object/from16 p2, v8

    move/from16 v8, v16

    const/4 v11, 0x0

    move/from16 v9, v17

    move/from16 v16, v12

    const-wide/16 v11, 0x0

    move-object/from16 v10, p2

    .line 331
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    :goto_2
    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 336
    invoke-interface/range {p1 .. p1}, Lio/agora/base/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 337
    iget-object v5, v0, Lio/agora/base/internal/video/YuvConverter;->formerTextureMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 338
    sget-boolean v4, Lio/agora/base/internal/video/YuvConverter;->enableConvertPerLog:Z

    if-eqz v4, :cond_7

    .line 339
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 340
    iget-wide v2, v0, Lio/agora/base/internal/video/YuvConverter;->convertTimeInNS:J

    cmp-long v6, v2, v11

    if-nez v6, :cond_5

    .line 341
    iput-wide v4, v0, Lio/agora/base/internal/video/YuvConverter;->convertTimeInNS:J

    goto :goto_3

    :cond_5
    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-long v2, v2

    .line 343
    iput-wide v2, v0, Lio/agora/base/internal/video/YuvConverter;->convertTimeInNS:J

    .line 345
    :goto_3
    iget-wide v2, v0, Lio/agora/base/internal/video/YuvConverter;->convertTimeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lio/agora/base/internal/video/YuvConverter;->convertTimeCounter:J

    const-wide/16 v4, 0x64

    .line 346
    rem-long/2addr v2, v4

    cmp-long v4, v2, v11

    if-nez v4, :cond_7

    .line 347
    iput-wide v11, v0, Lio/agora/base/internal/video/YuvConverter;->convertTimeCounter:J

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pbo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v15, :cond_6

    const-string v3, "YES"

    goto :goto_4

    :cond_6
    const-string v3, "NO"

    .line 349
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", avg timing for read pixel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lio/agora/base/internal/video/YuvConverter;->convertTimeInNS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "YuvConverter"

    .line 348
    invoke-static {v3, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v2, "YuvConverter.convert"

    .line 354
    invoke-static {v2}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const v2, 0x8d40

    const/4 v3, 0x0

    .line 357
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    mul-int v12, v13, v16

    add-int/2addr v12, v3

    .line 363
    div-int/lit8 v2, v13, 0x2

    add-int v4, v12, v2

    move-object/from16 v5, p2

    .line 365
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 367
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 369
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v14, v14, -0x1

    mul-int v14, v14, v13

    add-int/2addr v14, v2

    add-int/2addr v12, v14

    .line 372
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 373
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 375
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v14

    .line 376
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 377
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 379
    new-instance v10, Lio/agora/base/internal/video/YuvConverter$1;

    invoke-direct {v10, v0, v5}, Lio/agora/base/internal/video/YuvConverter$1;-><init>(Lio/agora/base/internal/video/YuvConverter;Ljava/nio/ByteBuffer;)V

    move v2, v1

    move/from16 v3, v16

    move-object v4, v6

    move v5, v13

    move-object v6, v7

    move v7, v13

    move v9, v13

    invoke-static/range {v2 .. v10}, Lio/agora/base/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lio/agora/base/JavaI420Buffer;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 1

    .line 389
    iget-object v0, p0, Lio/agora/base/internal/video/YuvConverter;->threadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 390
    iget-object v0, p0, Lio/agora/base/internal/video/YuvConverter;->drawer:Lio/agora/base/internal/video/GlGenericDrawer;

    invoke-virtual {v0}, Lio/agora/base/internal/video/GlGenericDrawer;->release()V

    .line 391
    iget-object v0, p0, Lio/agora/base/internal/video/YuvConverter;->i420TextureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->release()V

    .line 392
    iget-object v0, p0, Lio/agora/base/internal/video/YuvConverter;->gpupboUtil:Lio/agora/base/internal/video/GPUPBOUtil;

    invoke-virtual {v0}, Lio/agora/base/internal/video/GPUPBOUtil;->release()V

    .line 394
    iget-object v0, p0, Lio/agora/base/internal/video/YuvConverter;->threadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method
