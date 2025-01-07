.class public final Lcom/tencent/bugly/proguard/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ax;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ay$a;
    }
.end annotation


# static fields
.field private static final cA:Lcom/tencent/bugly/proguard/ay;


# instance fields
.field public bx:Ljava/lang/String;

.field public final cB:Lcom/tencent/bugly/proguard/ay$a;

.field private cC:Ljava/lang/String;

.field private cD:Ljava/lang/String;

.field private cE:Ljava/lang/String;

.field private cF:Ljava/lang/String;

.field private cG:Ljava/lang/String;

.field private cH:Ljava/lang/String;

.field private cI:[Ljava/lang/String;

.field private cJ:I

.field private cK:Ljava/lang/Boolean;

.field private cL:Lcom/tencent/bugly/proguard/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/ay;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ay;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ay;->cA:Lcom/tencent/bugly/proguard/ay;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/ay$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ay$a;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cB:Lcom/tencent/bugly/proguard/ay$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cC:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->bx:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cF:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cG:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cH:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cI:[Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/bugly/proguard/ay;->cJ:I

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cK:Ljava/lang/Boolean;

    new-instance v0, Lcom/tencent/bugly/proguard/az;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/az;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cL:Lcom/tencent/bugly/proguard/ax;

    return-void
.end method

.method public static aj()Lcom/tencent/bugly/proguard/ay;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ay;->cA:Lcom/tencent/bugly/proguard/ay;

    return-object v0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final af()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cK:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cL:Lcom/tencent/bugly/proguard/ax;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/ax;->af()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cK:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final ag()I
    .locals 2

    iget v0, p0, Lcom/tencent/bugly/proguard/ay;->cJ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cL:Lcom/tencent/bugly/proguard/ax;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/ax;->ag()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/ay;->cJ:I

    :cond_0
    iget v0, p0, Lcom/tencent/bugly/proguard/ay;->cJ:I

    return v0
.end method

.method public final ah()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cC:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cL:Lcom/tencent/bugly/proguard/ax;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/ax;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cC:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cC:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ai()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cD:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cL:Lcom/tencent/bugly/proguard/ax;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/ax;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cD:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cB:Lcom/tencent/bugly/proguard/ay$a;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ay$a;->bx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cB:Lcom/tencent/bugly/proguard/ay$a;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ay$a;->bx:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->bx:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->bx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->cL:Lcom/tencent/bugly/proguard/ax;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/ax;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ay;->bx:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay;->bx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
