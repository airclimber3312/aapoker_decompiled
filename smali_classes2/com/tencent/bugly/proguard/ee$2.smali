.class final Lcom/tencent/bugly/proguard/ee$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ee;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/dj;ILcom/tencent/bugly/proguard/dp;Ljava/util/List;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic mD:Z

.field final synthetic mE:J

.field final synthetic mH:Ljava/util/List;


# direct methods
.method constructor <init>(JLjava/util/List;Z)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ee$2;->mE:J

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ee$2;->mH:Ljava/util/List;

    iput-boolean p4, p0, Lcom/tencent/bugly/proguard/ee$2;->mD:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tencent/bugly/proguard/rp;JJZLjava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/ee$2;->mE:J

    sub-long v2, p1, p3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ee$2;->mH:Ljava/util/List;

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ee$2;->mD:Z

    if-eqz p1, :cond_0

    const-string p1, "realtime"

    goto :goto_0

    :cond_0
    const-string p1, "cache"

    :goto_0
    move-object v4, p1

    move v1, p7

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/proguard/ee;->a(Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ee$2;->mH:Ljava/util/List;

    invoke-static {p7, p1}, Lcom/tencent/bugly/proguard/ee;->a(ZLjava/util/List;)V

    return-void
.end method

.method public final onUploadStart(I)V
    .locals 0

    return-void
.end method
