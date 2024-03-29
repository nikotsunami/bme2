// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import java.util.List;
import medizin.server.domain.QuestionAccess;
import medizin.server.domain.QuestionAccessDataOnDemand;
import medizin.server.domain.QuestionAccessIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect QuestionAccessIntegrationTest_Roo_IntegrationTest {
    
    declare @type: QuestionAccessIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: QuestionAccessIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: QuestionAccessIntegrationTest: @Transactional;
    
    @Autowired
    private QuestionAccessDataOnDemand QuestionAccessIntegrationTest.dod;
    
    @Test
    public void QuestionAccessIntegrationTest.testCountQuestionAccesses() {
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", dod.getRandomQuestionAccess());
        long count = QuestionAccess.countQuestionAccesses();
        Assert.assertTrue("Counter for 'QuestionAccess' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void QuestionAccessIntegrationTest.testFindQuestionAccess() {
        QuestionAccess obj = dod.getRandomQuestionAccess();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to provide an identifier", id);
        obj = QuestionAccess.findQuestionAccess(id);
        Assert.assertNotNull("Find method for 'QuestionAccess' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'QuestionAccess' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void QuestionAccessIntegrationTest.testFindAllQuestionAccesses() {
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", dod.getRandomQuestionAccess());
        long count = QuestionAccess.countQuestionAccesses();
        Assert.assertTrue("Too expensive to perform a find all test for 'QuestionAccess', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<QuestionAccess> result = QuestionAccess.findAllQuestionAccesses();
        Assert.assertNotNull("Find all method for 'QuestionAccess' illegally returned null", result);
        Assert.assertTrue("Find all method for 'QuestionAccess' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void QuestionAccessIntegrationTest.testFindQuestionAccessEntries() {
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", dod.getRandomQuestionAccess());
        long count = QuestionAccess.countQuestionAccesses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<QuestionAccess> result = QuestionAccess.findQuestionAccessEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'QuestionAccess' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'QuestionAccess' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void QuestionAccessIntegrationTest.testFlush() {
        QuestionAccess obj = dod.getRandomQuestionAccess();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to provide an identifier", id);
        obj = QuestionAccess.findQuestionAccess(id);
        Assert.assertNotNull("Find method for 'QuestionAccess' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyQuestionAccess(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'QuestionAccess' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void QuestionAccessIntegrationTest.testMergeUpdate() {
        QuestionAccess obj = dod.getRandomQuestionAccess();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to provide an identifier", id);
        obj = QuestionAccess.findQuestionAccess(id);
        boolean modified =  dod.modifyQuestionAccess(obj);
        Integer currentVersion = obj.getVersion();
        QuestionAccess merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'QuestionAccess' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void QuestionAccessIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", dod.getRandomQuestionAccess());
        QuestionAccess obj = dod.getNewTransientQuestionAccess(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'QuestionAccess' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'QuestionAccess' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void QuestionAccessIntegrationTest.testRemove() {
        QuestionAccess obj = dod.getRandomQuestionAccess();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'QuestionAccess' failed to provide an identifier", id);
        obj = QuestionAccess.findQuestionAccess(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'QuestionAccess' with identifier '" + id + "'", QuestionAccess.findQuestionAccess(id));
    }
    
}
