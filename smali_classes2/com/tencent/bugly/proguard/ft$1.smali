.class final Lcom/tencent/bugly/proguard/ft$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ek;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ry:Lcom/tencent/feedback/eup/CrashHandleListener;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/CrashHandleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ft$1;->ry:Lcom/tencent/feedback/eup/CrashHandleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ft$1;->ry:Lcom/tencent/feedback/eup/CrashHandleListener;

    const v7, -0x499602d2

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v1 .. v13}, Lcom/tencent/feedback/eup/CrashHandleListener;->onCrashSaving(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ft$1;->ry:Lcom/tencent/feedback/eup/CrashHandleListener;

    const v5, -0x499602d2

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/tencent/feedback/eup/CrashHandleListener;->getCrashExtraData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)[B

    move-result-object p1

    return-object p1
.end method

.method public final b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ft$1;->ry:Lcom/tencent/feedback/eup/CrashHandleListener;

    const v5, -0x499602d2

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/tencent/feedback/eup/CrashHandleListener;->getCrashExtraMessage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onCrashHandleEnd(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ft$1;->ry:Lcom/tencent/feedback/eup/CrashHandleListener;

    invoke-interface {v0, p1}, Lcom/tencent/feedback/eup/CrashHandleListener;->onCrashHandleEnd(Z)Z

    move-result p1

    return p1
.end method

.method public final onCrashHandleStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ft$1;->ry:Lcom/tencent/feedback/eup/CrashHandleListener;

    invoke-interface {v0, p1}, Lcom/tencent/feedback/eup/CrashHandleListener;->onCrashHandleStart(Z)V

    return-void
.end method
