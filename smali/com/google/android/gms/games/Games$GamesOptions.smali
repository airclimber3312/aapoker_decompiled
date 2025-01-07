.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamesOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final zzhrz:Z

.field public final zzhsa:Z

.field public final zzhsb:I

.field public final zzhsc:Z

.field public final zzhsd:I

.field public final zzhse:Ljava/lang/String;

.field public final zzhsf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzhsg:Z

.field public final zzhsh:Z

.field public final zzhsi:Z

.field public final zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method private constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIZI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhrz:Z

    iput-boolean p2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsa:Z

    iput p3, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsb:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsc:Z

    iput p5, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsd:I

    iput-object p6, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhse:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsf:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsg:Z

    iput-boolean p9, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsh:Z

    iput-boolean p10, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsi:Z

    iput-object p11, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method synthetic constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/zzi;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/zzi;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhrz:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhrz:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsa:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsa:Z

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsb:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsb:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsc:Z

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsd:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsd:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhse:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhse:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhse:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsf:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsf:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsg:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsg:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsh:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsi:Z

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public final getExtensionType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public final getImpliedScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsg:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES_LITE:Lcom/google/android/gms/common/api/Scope;

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhrz:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsa:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsb:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsc:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsd:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhse:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsg:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsh:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsi:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsj:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/Games$GamesOptions;->zzasu()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzasu()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhrz:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.showConnectingPopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsa:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.connectingPopupGravity"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsb:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.retryingSignIn"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsc:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.sdkVariant"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.forceResolveAccountKey"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.games.key.proxyApis"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "com.google.android.gms.games.key.requireGooglePlus"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsg:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.unauthenticated"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsh:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.skipWelcomePopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzhsi:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
