.class public final Lcom/tencent/bugly/proguard/ne;
.super Ljava/lang/Object;


# instance fields
.field public final AD:Z

.field public final AE:I

.field private final AF:Ljava/lang/String;

.field public AG:Lcom/tencent/bugly/proguard/ng;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/tencent/bugly/proguard/ne;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/bugly/proguard/ne;-><init>(ZILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ne;->AD:Z

    iput p2, p0, Lcom/tencent/bugly/proguard/ne;->AE:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ne;->AF:Ljava/lang/String;

    return-void
.end method
