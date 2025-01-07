.class final Lcom/tencent/bugly/proguard/ee$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ee$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mE:J

.field final synthetic mF:Lcom/tencent/bugly/proguard/dp;

.field final synthetic mG:Lcom/tencent/bugly/proguard/ee$1;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ee$1;JLcom/tencent/bugly/proguard/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iput-wide p2, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mE:J

    iput-object p4, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mF:Lcom/tencent/bugly/proguard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;II)V
    .locals 10

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object p4, p4, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget-object p4, p4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", crash upload failed! ,errorCode = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",errorMsg = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mE:J

    sub-long v6, v0, v2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ee$1;->mD:Z

    if-eqz v0, :cond_0

    const-string v0, "realtime"

    goto :goto_0

    :cond_0
    const-string v0, "cache"

    :goto_0
    move-object v8, v0

    move-object v4, p3

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lcom/tencent/bugly/proguard/ee;->a(Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, p3}, Lcom/tencent/bugly/proguard/ee;->a(ZLjava/util/List;)V

    iget-object p3, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mF:Lcom/tencent/bugly/proguard/dp;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mF:Lcom/tencent/bugly/proguard/dp;

    iget-object v0, p3, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    const/16 v1, 0x33e

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "upload fail,error code = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errorMsg = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/tencent/bugly/proguard/do;->a(ILcom/tencent/bugly/proguard/rp;JJZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final al()V
    .locals 0

    return-void
.end method

.method public final b(II)V
    .locals 10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", crash upload success!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mE:J

    sub-long v6, v0, v2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ee$1;->mD:Z

    if-eqz v0, :cond_0

    const-string v0, "realtime"

    goto :goto_0

    :cond_0
    const-string v0, "cache"

    :goto_0
    move-object v8, v0

    const-string v9, "upload success"

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/tencent/bugly/proguard/ee;->a(Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ee;->a(ZLjava/util/List;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/ee$1;->mD:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ef;->dq()Lcom/tencent/bugly/proguard/ef;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ee$1;->fs:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mG:Lcom/tencent/bugly/proguard/ee$1;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/ef;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mF:Lcom/tencent/bugly/proguard/dp;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ee$1$1;->mF:Lcom/tencent/bugly/proguard/dp;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    const/16 v1, 0x33e

    const/4 v2, 0x0

    int-to-long v3, p2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-string v8, " crash upload success"

    invoke-interface/range {v0 .. v8}, Lcom/tencent/bugly/proguard/do;->a(ILcom/tencent/bugly/proguard/rp;JJZLjava/lang/String;)V

    :cond_3
    return-void
.end method
