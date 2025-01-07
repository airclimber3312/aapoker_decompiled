.class public Lcom/netease/nis/alivedetected/NISCameraPreview;
.super Lcom/netease/nis/alivedetected/f/a;
.source "NISCameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/alivedetected/NISCameraPreview$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public h:I

.field public i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Landroid/content/Context;

.field public final k:Ljava/lang/Object;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:[Ljava/lang/String;

.field public final o:[Ljava/lang/String;

.field public final p:[Ljava/lang/String;

.field public final q:[Ljava/lang/String;

.field public volatile r:Z

.field public s:Lcom/netease/nis/alivedetected/d;

.field public volatile t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netease/nis/alivedetected/NISCameraPreview;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/alivedetected/f/a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    const-string v0, "mouthPic.jpg"

    const-string v1, "eyePic.jpg"

    const-string v2, "frontalPic.jpg"

    const-string v3, "rightPic.jpg"

    const-string v4, "leftPic.jpg"

    .line 6
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->o:[Ljava/lang/String;

    const-string v0, "mouthErrorPic.jpg"

    const-string v1, "eyeErrorPic.jpg"

    const-string v2, "frontalErrorPic.jpg"

    const-string v3, "rightErrorPic.jpg"

    const-string v4, "leftErrorPic.jpg"

    .line 7
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->p:[Ljava/lang/String;

    const-string v0, "hdMouthPic.jpg"

    const-string v1, "hdEyePic.jpg"

    const-string v2, "hdFrontalPic.jpg"

    const-string v3, "hdRightPic.jpg"

    const-string v4, "hdLeftPic.jpg"

    .line 8
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->q:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->r:Z

    .line 11
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    .line 16
    iput-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->j:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/alivedetected/f/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    const-string p2, "mouthPic.jpg"

    const-string v0, "eyePic.jpg"

    const-string v1, "frontalPic.jpg"

    const-string v2, "rightPic.jpg"

    const-string v3, "leftPic.jpg"

    .line 22
    filled-new-array {v1, v2, v3, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->o:[Ljava/lang/String;

    const-string p2, "mouthErrorPic.jpg"

    const-string v0, "eyeErrorPic.jpg"

    const-string v1, "frontalErrorPic.jpg"

    const-string v2, "rightErrorPic.jpg"

    const-string v3, "leftErrorPic.jpg"

    .line 23
    filled-new-array {v1, v2, v3, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->p:[Ljava/lang/String;

    const-string p2, "hdMouthPic.jpg"

    const-string v0, "hdEyePic.jpg"

    const-string v1, "hdFrontalPic.jpg"

    const-string v2, "hdRightPic.jpg"

    const-string v3, "hdLeftPic.jpg"

    .line 24
    filled-new-array {v1, v2, v3, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->q:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->r:Z

    .line 27
    iput-boolean p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    .line 37
    iput-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->j:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nis/alivedetected/f/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    const-string p2, "mouthPic.jpg"

    const-string p3, "eyePic.jpg"

    const-string v0, "frontalPic.jpg"

    const-string v1, "rightPic.jpg"

    const-string v2, "leftPic.jpg"

    .line 43
    filled-new-array {v0, v1, v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->o:[Ljava/lang/String;

    const-string p2, "mouthErrorPic.jpg"

    const-string p3, "eyeErrorPic.jpg"

    const-string v0, "frontalErrorPic.jpg"

    const-string v1, "rightErrorPic.jpg"

    const-string v2, "leftErrorPic.jpg"

    .line 44
    filled-new-array {v0, v1, v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->p:[Ljava/lang/String;

    const-string p2, "hdMouthPic.jpg"

    const-string p3, "hdEyePic.jpg"

    const-string v0, "hdFrontalPic.jpg"

    const-string v1, "hdRightPic.jpg"

    const-string v2, "hdLeftPic.jpg"

    .line 45
    filled-new-array {v0, v1, v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->q:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->r:Z

    .line 48
    iput-boolean p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    .line 63
    iput-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->j:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->o:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6253\u5f00\u76f8\u673a\u7ed3\u679c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const-string/jumbo v1, "\u6253\u5f00\u76f8\u673a\u5931\u8d25"

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    sget-object v0, Lcom/netease/nis/alivedetected/e/a;->d:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->cancel()V

    .line 3
    sput-object v1, Lcom/netease/nis/alivedetected/e/a;->d:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/nis/alivedetected/e/a;->e:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->cancel()V

    .line 8
    sput-object v1, Lcom/netease/nis/alivedetected/e/a;->e:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    .line 10
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->r:Z

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/netease/nis/alivedetected/AliveDetector;->e:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 17
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 19
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_2
    iput-object v3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->n:[Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->h:I

    .line 23
    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/AliveDetector;->getHdActions()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-char v4, v1, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 26
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_3
    iput-object v2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->m:Ljava/util/List;

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4ece\u670d\u52a1\u7aef\u83b7\u53d6\u5230\u7684\u547d\u4ee4\u4fe1\u606f\u4e3a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u9ad8\u6e05\u7167\u4fe1\u606f\u4e3a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NISCameraPreview"

    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->h:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->n:[Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/netease/nis/alivedetected/e/a;->b(Ljava/lang/String;)Lcom/netease/nis/alivedetected/ActionType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPassedActionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsInitSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    return v0
.end method

.method public onPreviewFrame(Landroid/hardware/Camera;[BII)V
    .locals 9

    const-string p1, "actionIndex:"

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/nis/alivedetected/DetectedEngine;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v2}, Lcom/netease/nis/alivedetected/d;->onReady(Z)V

    .line 5
    :cond_0
    iput-boolean v2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/netease/nis/alivedetected/e/a;->a:J

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, v1}, Lcom/netease/nis/alivedetected/d;->onReady(Z)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v3

    sget-object v5, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    const-string v4, "6"

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-virtual/range {v3 .. v8}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->t:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->r:Z

    if-nez v0, :cond_18

    .line 12
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->h:I

    if-ge v0, v3, :cond_17

    .line 13
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->n:[Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    aget-object v0, v0, v3

    .line 14
    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v3

    .line 15
    iget-boolean v3, v3, Lcom/netease/nis/alivedetected/AliveDetector;->f:Z

    .line 16
    invoke-static {p2, p3, p4, v0, v3}, Lcom/netease/nis/alivedetected/DetectedEngine;->a([BIILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 17
    sget-object p2, Lcom/netease/nis/alivedetected/DetectedEngine;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_b

    .line 18
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u5f53\u524d\u52a8\u4f5c\u5e8f\u53f7\u662f\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NISCameraPreview"

    invoke-static {p3, p2}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->m:Ljava/util/List;

    if-eqz p2, :cond_9

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object p2

    .line 21
    iget-object p2, p2, Lcom/netease/nis/alivedetected/AliveDetector;->k:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    if-eqz p2, :cond_9

    .line 22
    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    iget-object p3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->l:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_5

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object p4

    .line 25
    iget-object p4, p4, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 26
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->q:[Ljava/lang/String;

    aget-object p2, p4, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    const-string p2, ""

    .line 27
    :goto_1
    iget-object p3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->j:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object p4

    .line 28
    iget-object p4, p4, Lcom/netease/nis/alivedetected/AliveDetector;->k:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    .line 29
    :try_start_0
    new-instance v3, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    invoke-direct {v3}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;-><init>()V

    .line 30
    iget-object v4, p4, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosBucketName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const-string v5, "AliveDetector"

    .line 32
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "0"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    iget-object p1, p4, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->hdAvatarData:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;

    iget-object p4, p1, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;->xNosToken:Ljava/lang/String;

    .line 35
    iget-object p1, p1, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;->objectName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    goto :goto_3

    .line 37
    :cond_6
    iget-object p1, p4, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->hdActionImageData:[Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;

    .line 38
    array-length p4, p1

    :goto_2
    if-ge v1, p4, :cond_8

    aget-object v5, p1, v1

    .line 39
    iget-object v6, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;->action:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 40
    iget-object v4, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;->xNosToken:Ljava/lang/String;

    .line 41
    iget-object v5, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;->objectName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object p4, v4

    .line 45
    :goto_3
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Lcom/netease/nis/alivedetected/e/f;

    invoke-direct {p3, v0}, Lcom/netease/nis/alivedetected/e/f;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, p4, p2, p3}, Lcom/netease/nis/alivedetected/e/a;->a(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p1

    sput-object p1, Lcom/netease/nis/alivedetected/e/a;->d:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 59
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u4e0a\u4f20\u9ad8\u6e05\u7167\u5931\u8d25"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v4, "5"

    const-string v5, ""

    const-string v6, ""

    const-string v8, ""

    invoke-virtual/range {v3 .. v8}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u4e0a\u4f20\u9ad8\u6e05\u7167\u5931\u8d25:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AliveDetector"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/nis/alivedetected/NISCameraPreview;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u5f53\u524d\u52a8\u4f5c\u7167\u8def\u5f84\u4e3a:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NISCameraPreview"

    invoke-static {p3, p2}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object p2, Lcom/netease/nis/alivedetected/e/b;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 65
    sget-object p2, Lcom/netease/nis/alivedetected/e/b;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_a
    sget-object p2, Lcom/netease/nis/alivedetected/e/b;->d:Ljava/lang/String;

    const-string p3, "1"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 68
    :try_start_2
    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->j:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object p3

    .line 69
    iget-object p3, p3, Lcom/netease/nis/alivedetected/AliveDetector;->k:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    .line 70
    iget-object p4, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    new-instance v1, Lcom/netease/nis/alivedetected/NISCameraPreview$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/alivedetected/NISCameraPreview$a;-><init>(Lcom/netease/nis/alivedetected/NISCameraPreview;Ljava/lang/String;)V

    .line 72
    invoke-static {p2, p1, p3, p4, v1}, Lcom/netease/nis/alivedetected/e/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;ILcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    :try_end_2
    .catch Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/netease/cloud/nos/yidun/exception/InvalidChunkSizeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception p2

    goto :goto_5

    :catch_2
    move-exception p2

    .line 75
    :goto_5
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v3

    const-string v4, "5"

    sget-object v5, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    const-string v6, ""

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "\u4e0a\u4f20\u666e\u901a\u7167\u5931\u8d25"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/ActionType;->getActionTip()Ljava/lang/String;

    move-result-object p1

    :cond_b
    move-object v8, p1

    .line 77
    invoke-virtual/range {v3 .. v8}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u4e0a\u4f20\u56fe\u7247\u5230nos\u670d\u52a1\u5668\u5931\u8d25:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NISCameraPreview"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const-string p1, "2"

    .line 81
    sput-object p1, Lcom/netease/nis/alivedetected/e/b;->d:Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 83
    :try_start_3
    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :goto_6
    :try_start_4
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 86
    :try_start_5
    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 87
    monitor-exit p1

    goto :goto_7

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 90
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string/jumbo p1, "\u4e0a\u4f20\u56fe\u7247\u8d85\u65f6"

    .line 91
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_7
    const-string p1, "NISCameraPreview"

    const-string/jumbo p2, "\u5355\u4e2a\u52a8\u4f5c\u68c0\u6d4b\u901a\u8fc7"

    .line 93
    invoke-static {p1, p2}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception p2

    .line 94
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p2

    .line 95
    :cond_c
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 98
    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->p:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_10

    .line 99
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object p3

    .line 100
    iget-object p3, p3, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->p:[Ljava/lang/String;

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    aget-object p3, p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_a

    .line 105
    :cond_d
    sget-object p1, Lcom/netease/nis/alivedetected/DetectedEngine;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_b

    .line 106
    :cond_e
    sget-boolean p1, Lcom/netease/nis/alivedetected/e/a;->c:Z

    if-eqz p1, :cond_f

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/netease/nis/alivedetected/e/a;->a:J

    sget-wide v7, Lcom/netease/nis/alivedetected/e/a;->b:J

    add-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-lez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_10

    .line 108
    :try_start_8
    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/f/a;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v3

    .line 109
    iget-object v3, v3, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->p:[Ljava/lang/String;

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p1, p2, p3, p4, v1}, Lcom/netease/nis/alivedetected/e/a;->a(Landroid/hardware/Camera$Parameters;[BIILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 117
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/netease/nis/alivedetected/e/a;->a:J

    .line 118
    :cond_10
    :goto_a
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->h:I

    if-ge p1, p2, :cond_16

    .line 119
    invoke-static {}, Lcom/netease/nis/alivedetected/DetectedEngine;->faceGetStateTipType()I

    move-result p1

    if-eqz p1, :cond_15

    if-eq p1, v2, :cond_12

    const/4 p2, 0x2

    if-eq p1, p2, :cond_11

    goto :goto_b

    .line 136
    :cond_11
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz p1, :cond_18

    .line 137
    sget-object p2, Lcom/netease/nis/alivedetected/ActionType;->ACTION_PASSED:Lcom/netease/nis/alivedetected/ActionType;

    invoke-static {}, Lcom/netease/nis/alivedetected/DetectedEngine;->faceGetDetectedStateTip()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/netease/nis/alivedetected/d;->onStateTipChanged(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V

    goto :goto_b

    .line 138
    :cond_12
    sget-object p1, Lcom/netease/nis/alivedetected/NISCameraPreview;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_13

    .line 139
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_b

    .line 141
    :cond_13
    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz p2, :cond_14

    .line 142
    sget-object p3, Lcom/netease/nis/alivedetected/ActionType;->ACTION_ERROR:Lcom/netease/nis/alivedetected/ActionType;

    invoke-static {}, Lcom/netease/nis/alivedetected/DetectedEngine;->faceGetDetectedStateTip()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lcom/netease/nis/alivedetected/d;->onStateTipChanged(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V

    :cond_14
    const/16 p2, 0xf

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_b

    .line 144
    :cond_15
    invoke-static {v0}, Lcom/netease/nis/alivedetected/e/a;->b(Ljava/lang/String;)Lcom/netease/nis/alivedetected/ActionType;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 145
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz p1, :cond_18

    .line 146
    invoke-static {v0}, Lcom/netease/nis/alivedetected/e/a;->b(Ljava/lang/String;)Lcom/netease/nis/alivedetected/ActionType;

    move-result-object p2

    invoke-static {}, Lcom/netease/nis/alivedetected/DetectedEngine;->faceGetDetectedStateTip()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/netease/nis/alivedetected/d;->onStateTipChanged(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V

    goto :goto_b

    .line 164
    :cond_16
    iput-boolean v2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->r:Z

    .line 165
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz p1, :cond_18

    .line 166
    invoke-interface {p1}, Lcom/netease/nis/alivedetected/d;->onNativeDetectedPassed()V

    goto :goto_b

    .line 167
    :cond_17
    iput-boolean v2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->r:Z

    .line 168
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    if-eqz p1, :cond_18

    .line 169
    invoke-interface {p1}, Lcom/netease/nis/alivedetected/d;->onNativeDetectedPassed()V

    :cond_18
    :goto_b
    return-void
.end method

.method public setEventCallback(Lcom/netease/nis/alivedetected/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    return-void
.end method
