.class public final Lcom/google/android/gms/internal/zzcew;
.super Ljava/lang/Object;


# static fields
.field public static final zzipt:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.android.gms.instantapps.provider.api/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcew;->zzipt:Landroid/net/Uri;

    return-void
.end method
