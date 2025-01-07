.class public Lcom/tencent/bugly/proguard/qf;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/qf$a;
    }
.end annotation


# static fields
.field private static FE:Landroid/content/SharedPreferences;

.field private static FF:Landroid/content/SharedPreferences$Editor;

.field private static final FG:Ljava/lang/String;

.field private static final FH:Ljava/lang/String;

.field private static FJ:Lcom/tencent/bugly/proguard/qf;

.field public static FT:I


# instance fields
.field private FI:I

.field private FK:J

.field private FL:J

.field private FM:J

.field private FN:J

.field private FO:J

.field private FP:J

.field private FQ:Ljava/lang/String;

.field private final FR:Lcom/tencent/bugly/proguard/qh;

.field public final FS:Lcom/tencent/bugly/proguard/qh;

.field private FU:J

.field public FV:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/bugly/proguard/qf$a;",
            ">;"
        }
    .end annotation
.end field

.field public FW:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/bugly/proguard/qf$a;",
            ">;"
        }
    .end annotation
.end field

.field public FX:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/bugly/proguard/qf$a;",
            ">;"
        }
    .end annotation
.end field

.field public FY:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/bugly/proguard/qb;",
            ">;"
        }
    .end annotation
.end field

.field public FZ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/bugly/proguard/qc;",
            ">;"
        }
    .end annotation
.end field

.field private Ga:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Gb:Z

.field private final zA:Lcom/tencent/bugly/proguard/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ":"

    const-string v1, "main"

    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/kp;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/cg;->d([B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    const/16 v2, 0x14

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "name_parser_error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/qe;->J(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sput-object v1, Lcom/tencent/bugly/proguard/qf;->FG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "last_mem_valid_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/qf;->FH:Ljava/lang/String;

    const/16 v0, 0x1e

    sput v0, Lcom/tencent/bugly/proguard/qf;->FT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/bugly/proguard/qf;->FI:I

    new-instance v2, Lcom/tencent/bugly/proguard/gc;

    const-wide/16 v3, 0x2710

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/tencent/bugly/proguard/gc;-><init>(JJ)V

    iput-object v2, v0, Lcom/tencent/bugly/proguard/qf;->zA:Lcom/tencent/bugly/proguard/gc;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/qf;->FP:J

    const-string v2, ""

    iput-object v2, v0, Lcom/tencent/bugly/proguard/qf;->FQ:Ljava/lang/String;

    new-instance v3, Lcom/tencent/bugly/proguard/qh;

    sget-object v4, Lcom/tencent/bugly/proguard/qf;->FG:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/tencent/bugly/proguard/qh;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tencent/bugly/proguard/qf;->FR:Lcom/tencent/bugly/proguard/qh;

    new-instance v5, Lcom/tencent/bugly/proguard/qh;

    invoke-direct {v5, v4}, Lcom/tencent/bugly/proguard/qh;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lcom/tencent/bugly/proguard/qf;->FS:Lcom/tencent/bugly/proguard/qh;

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/tencent/bugly/proguard/qf;->FU:J

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/tencent/bugly/proguard/qf;->FW:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/tencent/bugly/proguard/qf;->FX:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/tencent/bugly/proguard/qf;->FY:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/tencent/bugly/proguard/qf;->FZ:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/tencent/bugly/proguard/qf;->Ga:Ljava/util/LinkedList;

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/qf;->Gb:Z

    sget-object v1, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    sput-object v1, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    iget-object v4, v5, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v4, v1}, Lcom/tencent/bugly/proguard/qg;->b(Landroid/content/SharedPreferences;)V

    iget-object v4, v5, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v4, v1}, Lcom/tencent/bugly/proguard/qg;->b(Landroid/content/SharedPreferences;)V

    iget-object v4, v5, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v4, v1}, Lcom/tencent/bugly/proguard/qg;->b(Landroid/content/SharedPreferences;)V

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/qh;->iV()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/qh;->iW()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/qh;->iY()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/qh;->iX()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/qf;->FM:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/qf;->FN:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/qf;->FO:J

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iO()J

    move-result-wide v1

    const-wide/16 v4, 0x400

    mul-long v1, v1, v4

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/qf;->FK:J

    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iP()J

    move-result-wide v6

    mul-long v4, v4, v6

    iput-wide v4, v0, Lcom/tencent/bugly/proguard/qf;->FL:J

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/qf;->FM:J

    iget-wide v8, v0, Lcom/tencent/bugly/proguard/qf;->FN:J

    sub-long v13, v6, v8

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iR()Ljava/lang/String;

    move-result-object v11

    iget-object v6, v3, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    move-wide v7, v1

    move-wide v9, v4

    move-object v0, v11

    move-wide v11, v13

    invoke-virtual/range {v6 .. v12}, Lcom/tencent/bugly/proguard/qg;->b(JJJ)V

    iget-object v6, v3, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual/range {v6 .. v12}, Lcom/tencent/bugly/proguard/qg;->b(JJJ)V

    iget-object v1, v3, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v22}, Lcom/tencent/bugly/proguard/qg;->b(JJJ)V

    iput-object v15, v3, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    iget-object v1, v3, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/qg;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v1, v3, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/qg;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v1, v3, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/qg;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/qh;->iV()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/qh;->iW()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/qh;->iX()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/qh;->iY()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iQ()V

    :cond_0
    return-void
.end method

.method public static E(Z)V
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/qf;->FH:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private a(JJJ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/qf$a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lcom/tencent/bugly/proguard/qf$a;-><init>(Lcom/tencent/bugly/proguard/qf;Ljava/lang/Long;Ljava/lang/Long;)V

    new-instance p1, Lcom/tencent/bugly/proguard/qf$a;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p1, p0, v0, p2}, Lcom/tencent/bugly/proguard/qf$a;-><init>(Lcom/tencent/bugly/proguard/qf;Ljava/lang/Long;Ljava/lang/Long;)V

    new-instance p2, Lcom/tencent/bugly/proguard/qf$a;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p0, v0, p3}, Lcom/tencent/bugly/proguard/qf$a;-><init>(Lcom/tencent/bugly/proguard/qf;Ljava/lang/Long;Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/tencent/bugly/proguard/qf;->FW:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FX:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/tencent/bugly/proguard/qf;->FW:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/tencent/bugly/proguard/qf;->FX:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FW:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FX:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    sget p2, Lcom/tencent/bugly/proguard/qf;->FT:I

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FW:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qf;->FX:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static iK()Lcom/tencent/bugly/proguard/qf;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FJ:Lcom/tencent/bugly/proguard/qf;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/qf;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/qf;->FJ:Lcom/tencent/bugly/proguard/qf;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/qf;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/qf;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/qf;->FJ:Lcom/tencent/bugly/proguard/qf;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FJ:Lcom/tencent/bugly/proguard/qf;

    return-object v0
.end method

.method public static iL()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/id;->fF()V

    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    sput-object v0, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    sput-object v0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private iM()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qf;->Ga:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static iN()Z
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FE:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/tencent/bugly/proguard/qf;->FH:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private iP()J
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/self/status"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "VmSize"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[^0-9]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput v0, p0, Lcom/tencent/bugly/proguard/qf;->FI:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v1, v5

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v5

    goto :goto_0

    :catchall_2
    move-exception v5

    move-object v4, v3

    :goto_0
    :try_start_3
    iget v6, p0, Lcom/tencent/bugly/proguard/qf;->FI:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/tencent/bugly/proguard/qf;->FI:I

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-le v6, v8, :cond_2

    const-string v6, "vss_parser_error"

    invoke-static {v6, v3}, Lcom/tencent/bugly/proguard/qe;->J(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/tencent/bugly/proguard/qf;->removeMessages(I)V

    :cond_2
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v9, [Ljava/lang/String;

    const-string v8, "RMonitor_MemoryQuantile"

    aput-object v8, v6, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v6}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    return-wide v1

    :catchall_3
    move-exception v0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    throw v0
.end method

.method private iR()Ljava/lang/String;
    .locals 7

    const-string v0, "RMonitor_MemoryQuantile"

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v1

    iget-wide v2, v1, Lcom/tencent/bugly/proguard/kz;->zt:J

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/qf;->FP:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/kz;->gD()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/qf;->FQ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "getUserCustom"

    invoke-virtual {v4, v0, v5, v1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/qf;->FP:J

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getUserCustom, seq: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/qf;->FP:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", userCustom: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qf;->FQ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/qf;->FQ:Ljava/lang/String;

    return-object v0
.end method

.method private o(J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qf;->FY:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/qb;

    invoke-interface {v1, p1, p2}, Lcom/tencent/bugly/proguard/qb;->m(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p(J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qf;->FZ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/qc;

    invoke-interface {v1, p1, p2}, Lcom/tencent/bugly/proguard/qc;->n(J)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v8, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iO()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long v2, v2, v4

    iput-wide v2, v7, Lcom/tencent/bugly/proguard/qf;->FK:J

    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iP()J

    move-result-wide v2

    mul-long v2, v2, v4

    iput-wide v2, v7, Lcom/tencent/bugly/proguard/qf;->FL:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/tencent/bugly/proguard/qf;->FM:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/tencent/bugly/proguard/qf;->FN:J

    iget-wide v4, v7, Lcom/tencent/bugly/proguard/qf;->FK:J

    iget-wide v13, v7, Lcom/tencent/bugly/proguard/qf;->FL:J

    iget-wide v9, v7, Lcom/tencent/bugly/proguard/qf;->FM:J

    sub-long v2, v9, v2

    iget-object v0, v7, Lcom/tencent/bugly/proguard/qf;->FR:Lcom/tencent/bugly/proguard/qh;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    iget-wide v9, v0, Lcom/tencent/bugly/proguard/qg;->Gh:J

    const/4 v6, 0x0

    cmp-long v11, v4, v9

    if-lez v11, :cond_1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    :goto_0
    iget-wide v11, v0, Lcom/tencent/bugly/proguard/qg;->Gi:J

    cmp-long v15, v13, v11

    if-lez v15, :cond_2

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    :goto_1
    iget-wide v11, v0, Lcom/tencent/bugly/proguard/qg;->Gj:J

    cmp-long v0, v2, v11

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v11, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v12, v8, [Ljava/lang/String;

    const-string v15, "RMonitor_MemoryQuantile"

    aput-object v15, v12, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "current\'s pss = "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", max_pss = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v1

    invoke-virtual {v11, v12}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v1, v7, Lcom/tencent/bugly/proguard/qf;->zA:Lcom/tencent/bugly/proguard/gc;

    iget-wide v9, v1, Lcom/tencent/bugly/proguard/gc;->rX:J

    const-wide/16 v11, 0x2710

    cmp-long v1, v9, v11

    if-nez v1, :cond_4

    iget-object v1, v7, Lcom/tencent/bugly/proguard/qf;->FR:Lcom/tencent/bugly/proguard/qh;

    iget-object v9, v1, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    sget-object v10, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    move-wide v11, v4

    move-wide/from16 v19, v13

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v13

    iget-object v1, v7, Lcom/tencent/bugly/proguard/qf;->FR:Lcom/tencent/bugly/proguard/qh;

    iget-object v9, v1, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    sget-object v10, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    move-wide v11, v4

    :goto_3
    move-wide v15, v2

    invoke-virtual/range {v9 .. v16}, Lcom/tencent/bugly/proguard/qg;->a(Landroid/content/SharedPreferences$Editor;JJJ)V

    iget-object v1, v7, Lcom/tencent/bugly/proguard/qf;->FR:Lcom/tencent/bugly/proguard/qh;

    iget-object v9, v1, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    sget-object v10, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    move-wide v11, v4

    move-wide/from16 v13, v19

    move-wide v15, v2

    invoke-virtual/range {v9 .. v16}, Lcom/tencent/bugly/proguard/qg;->a(Landroid/content/SharedPreferences$Editor;JJJ)V

    if-nez v17, :cond_5

    if-nez v18, :cond_5

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, v7, Lcom/tencent/bugly/proguard/qf;->FR:Lcom/tencent/bugly/proguard/qh;

    sget-object v1, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iR()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iput-object v2, v0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/qh;->iV()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    iget-object v2, v0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iput-object v3, v0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/qh;->iW()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    sget-object v0, Lcom/tencent/bugly/proguard/qf;->FF:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {v7, v4, v5}, Lcom/tencent/bugly/proguard/qf;->o(J)V

    move-wide/from16 v0, v19

    invoke-direct {v7, v0, v1}, Lcom/tencent/bugly/proguard/qf;->p(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/proguard/qf;->iM()V

    iget-wide v1, v7, Lcom/tencent/bugly/proguard/qf;->FK:J

    iget-wide v3, v7, Lcom/tencent/bugly/proguard/qf;->FL:J

    iget-wide v5, v7, Lcom/tencent/bugly/proguard/qf;->FM:J

    iget-wide v9, v7, Lcom/tencent/bugly/proguard/qf;->FN:J

    sub-long/2addr v5, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/proguard/qf;->a(JJJ)V

    iget-object v0, v7, Lcom/tencent/bugly/proguard/qf;->zA:Lcom/tencent/bugly/proguard/gc;

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/gc;->rX:J

    invoke-virtual {v7, v8, v0, v1}, Lcom/tencent/bugly/proguard/qf;->sendEmptyMessageDelayed(IJ)Z

    :goto_4
    return-void

    :cond_8
    iget-object v0, v7, Lcom/tencent/bugly/proguard/qf;->zA:Lcom/tencent/bugly/proguard/gc;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    invoke-virtual {v7, v8}, Lcom/tencent/bugly/proguard/qf;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final iO()J
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/qf;->FU:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/qf;->FU:J

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_MemoryQuantile"

    const-string v2, "get pss info from ActivityManager"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v0

    return-wide v0
.end method

.method public final iQ()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/qf;->Gb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qf;->E(Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qf;->sendEmptyMessage(I)Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/qf;->Gb:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
