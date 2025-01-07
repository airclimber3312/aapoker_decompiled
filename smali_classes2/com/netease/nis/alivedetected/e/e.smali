.class public final Lcom/netease/nis/alivedetected/e/e;
.super Ljava/lang/Thread;
.source "FileUtils.java"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/e/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nis/alivedetected/e/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nis/alivedetected/e/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/e/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nis/alivedetected/e/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/alivedetected/e/e;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/netease/nis/alivedetected/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
