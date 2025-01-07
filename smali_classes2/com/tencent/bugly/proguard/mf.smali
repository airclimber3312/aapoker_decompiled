.class abstract Lcom/tencent/bugly/proguard/mf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/mi;


# instance fields
.field private final zT:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/bugly/proguard/mf;->zT:I

    return-void
.end method


# virtual methods
.method public final gX()I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/mf;->zT:I

    return v0
.end method
