.class Lcom/hyphenate/chat/LRUCache$Node;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/LRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field next:Lcom/hyphenate/chat/LRUCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hyphenate/chat/LRUCache<",
            "TK;TV;>.Node<TT;TU;>;"
        }
    .end annotation
.end field

.field previous:Lcom/hyphenate/chat/LRUCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hyphenate/chat/LRUCache<",
            "TK;TV;>.Node<TT;TU;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hyphenate/chat/LRUCache;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/LRUCache;Lcom/hyphenate/chat/LRUCache$Node;Lcom/hyphenate/chat/LRUCache$Node;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/LRUCache<",
            "TK;TV;>.Node<TT;TU;>;",
            "Lcom/hyphenate/chat/LRUCache<",
            "TK;TV;>.Node<TT;TU;>;TT;TU;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache$Node;->this$0:Lcom/hyphenate/chat/LRUCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p3, p0, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p4, p0, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    iput-object p5, p0, Lcom/hyphenate/chat/LRUCache$Node;->value:Ljava/lang/Object;

    return-void
.end method
