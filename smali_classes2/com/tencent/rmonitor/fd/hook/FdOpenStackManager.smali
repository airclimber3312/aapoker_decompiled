.class public Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;
.super Ljava/lang/Object;


# static fields
.field protected static Au:Z

.field private static Av:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Aw:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager$1;

    invoke-direct {v0}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager$1;-><init>()V

    sput-object v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Av:Ljava/util/List;

    const-string v0, ".*\\.so$"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Aw:[Ljava/lang/String;

    const-string v0, "rmonitor_memory"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ku;->bc(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Au:Z

    return-void
.end method

.method public static bn(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Au:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->nDumpFdOpenStacks(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hi()Z
    .locals 5

    sget-boolean v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Au:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Aw:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->nSetRegisterHookSo(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aU()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Av:Ljava/util/List;

    const-string v2, ".*/libmonochrome.so$"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Av:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->nSetIgnoreHookSo(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/fy;->aY()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aU()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gu;->ti:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {v1}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->nStartFdOpenHook(Z)V

    return v2

    :cond_5
    return v1
.end method

.method public static hj()V
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Au:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->nStopFdOpenHook()V

    :cond_0
    return-void
.end method

.method private static native nDumpFdOpenStacks(Ljava/lang/String;)Z
.end method

.method private static native nSetFdOpenHookValue(Z)V
.end method

.method private static native nSetIgnoreHookSo(Ljava/lang/String;)V
.end method

.method private static native nSetRegisterHookSo(Ljava/lang/String;)V
.end method

.method private static native nStartFdOpenHook(Z)V
.end method

.method private static native nStopFdOpenHook()V
.end method

.method public static y(Z)V
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->Au:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->nSetFdOpenHookValue(Z)V

    :cond_0
    return-void
.end method
