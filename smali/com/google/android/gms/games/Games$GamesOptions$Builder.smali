.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzhrz:Z

.field private zzhsa:Z

.field private zzhsb:I

.field private zzhsc:Z

.field private zzhsd:I

.field private zzhse:Ljava/lang/String;

.field private zzhsf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzhsg:Z

.field private zzhsh:Z

.field private zzhsi:Z

.field zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhrz:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsa:Z

    const/16 v1, 0x11

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsb:I

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsc:Z

    const/16 v1, 0x1110

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsd:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhse:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsf:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsi:Z

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhrz:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsa:Z

    const/16 v1, 0x11

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsb:I

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsc:Z

    const/16 v1, 0x1110

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsd:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhse:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsf:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsi:Z

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhrz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhrz:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsa:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsa:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsb:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsb:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsc:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsd:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsd:I

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhse:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhse:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsf:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsf:Ljava/util/ArrayList;

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsg:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsh:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsi:Z

    iget-object p1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/zzi;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/games/Games$GamesOptions;
    .locals 14

    new-instance v13, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhrz:Z

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsa:Z

    iget v3, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsb:I

    iget-boolean v4, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsc:Z

    iget v5, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsd:I

    iget-object v6, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhse:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsf:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsg:Z

    iget-boolean v9, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsh:Z

    iget-boolean v10, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsi:Z

    iget-object v11, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/zzi;)V

    return-object v13
.end method

.method public final setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsd:I

    return-object p0
.end method

.method public final setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsa:Z

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsb:I

    return-object p0
.end method

.method public final setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsa:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhsb:I

    return-object p0
.end method
