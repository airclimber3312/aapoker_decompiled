.class public Lcom/netease/nis/alivedetected/a$b;
.super Ljava/lang/Object;
.source "AliveDetectedHelper.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/alivedetected/a;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

.field public final synthetic e:Lcom/netease/nis/alivedetected/a;


# direct methods
.method public constructor <init>(Lcom/netease/nis/alivedetected/a;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/a$b;->e:Lcom/netease/nis/alivedetected/a;

    iput-object p2, p0, Lcom/netease/nis/alivedetected/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nis/alivedetected/a$b;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/netease/nis/alivedetected/a$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/nis/alivedetected/a$b;->d:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u5f02\u5e38\u52a8\u4f5c\u56fe\u7247\u4e0a\u4f20\u5931\u8d25:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AliveDetectedHelper"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u5f02\u5e38\u52a8\u4f5c\u56fe\u7247\u4e0a\u4f20\u6210\u529f"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nis/alivedetected/a$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AliveDetectedHelper"

    invoke-static {v0, p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/netease/nis/alivedetected/a$b;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object p1

    const-string v2, "8"

    iget-object v0, p0, Lcom/netease/nis/alivedetected/a$b;->e:Lcom/netease/nis/alivedetected/a;

    .line 5
    iget-object v3, v0, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    .line 6
    iget-object v6, p0, Lcom/netease/nis/alivedetected/a$b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nis/alivedetected/a$b;->d:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/e/d;->b()V

    return-void
.end method
