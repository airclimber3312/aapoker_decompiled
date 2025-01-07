.class final Lcom/tencent/bugly/proguard/cl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final eS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private eT:Ljava/lang/reflect/Field;

.field private eU:Z

.field private final fieldName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/cl$a;->eT:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/cl$a;->eU:Z

    iput-object p1, p0, Lcom/tencent/bugly/proguard/cl$a;->eS:Ljava/lang/Class;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/cl$a;->fieldName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/cl$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bj()Ljava/lang/reflect/Field;
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cl$a;->eT:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/cl$a;->eU:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/cl$a;->eS:Ljava/lang/Class;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/cl$a;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/cl$a;->eT:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RMonitor_util_ReflectUtil"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/tencent/bugly/proguard/cl$a;->fieldName:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/cl$a;->eU:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/cl$a;->eT:Ljava/lang/reflect/Field;

    return-object v0
.end method
