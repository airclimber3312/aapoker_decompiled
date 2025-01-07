.class final Lcom/tencent/bugly/proguard/cq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/cq;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fb:Ljava/util/List;

.field final synthetic fc:Lcom/tencent/bugly/proguard/cq;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/cq;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/cq$1;->fc:Lcom/tencent/bugly/proguard/cq;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/cq$1;->fb:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tencent/bugly/proguard/rp;JJZLjava/lang/String;)V
    .locals 0

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "[UserInfo] Successfully uploaded user info."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/tencent/bugly/proguard/cq$1;->fb:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iput-wide p1, p4, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    iget-object p5, p0, Lcom/tencent/bugly/proguard/cq$1;->fc:Lcom/tencent/bugly/proguard/cq;

    const/4 p6, 0x1

    invoke-static {p5, p4, p6}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/proguard/cq;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUploadStart(I)V
    .locals 0

    return-void
.end method
