.class public final Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzheu:Landroid/net/Uri;

.field private zzhev:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;
    .locals 3

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;->zzhev:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;->zzheu:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final setMakeCredentialOptions(Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;)Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;->zzhev:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    return-object p0
.end method

.method public final setOrigin(Landroid/net/Uri;)Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;->zzheu:Landroid/net/Uri;

    return-object p0
.end method
