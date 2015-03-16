<h1>Edit Item</h1>
<form method="post" action="/edit.php?id=<?= $item->getId() ?>">
    <p>
        <label for="name">Book Name</label>
        <input type="text" id="name" name="name" value="<?= $item->getName() ?>"/>
    </p>
    <p>
        <label for="desc">Description</label>
        <input type="text" id="desc" name="desc" value="<?= $item->getDescription() ?>"/>
    </p>
    <p>
        <input type="hidden" name="id" value="<?= $item->getId() ?>"/>
        <input type="submit" id="edit" name="edit" value="Edit"/>
        <input type="submit" id="delete" name="delete" value="Delete"/>
    </p>
</form>
