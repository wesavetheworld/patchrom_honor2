.class Lcom/android/gallery3d/photoeditor/actions/VignetteAction$1;
.super Ljava/lang/Object;
.source "VignetteAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/VignetteAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/VignetteAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/VignetteFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/VignetteAction;Lcom/android/gallery3d/photoeditor/filters/VignetteFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/VignetteAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/VignetteAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/VignetteAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/VignetteFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(FZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 44
    if-eqz p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/VignetteAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/VignetteFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/VignetteFilter;->setScale(F)V

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/VignetteAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/VignetteAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/VignetteAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/VignetteFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/VignetteAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 48
    :cond_0
    return-void
.end method
