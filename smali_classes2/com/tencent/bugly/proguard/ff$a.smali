.class public final Lcom/tencent/bugly/proguard/ff$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field ot:Ljava/lang/String;

.field pP:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pQ:Lcom/tencent/bugly/proguard/ff$d;

.field pR:Lcom/tencent/bugly/proguard/ff$c;

.field pS:Z

.field pT:Z

.field pU:Z

.field pV:Z

.field pW:Z

.field pX:Lcom/tencent/bugly/proguard/ff$f;

.field pY:Z

.field pZ:Z

.field pd:J

.field qa:Ljava/lang/String;

.field qb:Z

.field final qc:Lcom/tencent/bugly/proguard/ff;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ff;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    sget-object v0, Lcom/tencent/bugly/proguard/ff$d;->qe:Lcom/tencent/bugly/proguard/ff$d;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ff$a;->pR:Lcom/tencent/bugly/proguard/ff$c;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pS:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pT:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/ff$a;->pU:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pV:Z

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/ff$a;->pW:Z

    sget-object v2, Lcom/tencent/bugly/proguard/ff$f;->qk:Lcom/tencent/bugly/proguard/ff$f;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/ff$a;->pX:Lcom/tencent/bugly/proguard/ff$f;

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ff$a;->pd:J

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pY:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pZ:Z

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ff$a;->qa:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->qb:Z

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ff$a;->qc:Lcom/tencent/bugly/proguard/ff;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ff;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "boot.oat"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "boot-framework.oat"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ey;->h(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ff$a;->pV:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nWeChat backtrace configurations: \n>>> Backtrace Mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Quicken always on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Saving Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ff$a;->ot:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/fe;->a(Lcom/tencent/bugly/proguard/ff$a;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Custom Library Loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pR:Lcom/tencent/bugly/proguard/ff$c;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Directories to Warm-up: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Is Warm-up Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pV:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Warm-up Timing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pX:Lcom/tencent/bugly/proguard/ff$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Warm-up Delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms\n>>> Warm-up in isolate process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pW:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Enable logger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Enable Isolate Process logger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pZ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Path of XLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ff$a;->qa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Cool-down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n>>> Cool-down if Apk Updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ff$a;->pU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
